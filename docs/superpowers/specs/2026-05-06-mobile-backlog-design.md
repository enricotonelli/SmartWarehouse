# SmartWarehouse Mobile — Backlog Design

**Fecha:** 2026-05-06
**Grupo:** 2 — App Mobile
**Owner:** Julián Sánchez
**Status:** Approved (esperando ejecución)

---

## 1. Contexto

El proyecto SmartWarehouse es un sistema integrador en el que la App Mobile (Grupo 2) consume APIs del Backend (Grupo 4) y se integra con la flota de rovers vía WebSocket. Hito 2 (semana 10) requiere que la app funcione localmente con datos mock; Hito 3 (semana 16) requiere integración real end-to-end.

**Estado actual del repo:**
- Setup base mergeado en `main` (PR #9 + commit `c51ea3b fix base config`).
- Scaffolding de packages: `commons`, `core`, `design_system`, `features/auth`, `features/login`, `features/bottom_navigation_bar`, `features/repositories/token_repository`.
- Arquitectura: Flutter + Melos monorepo, flutter_bloc, Beamer (routing), freezed, design system con fuente Satoshi.
- 7 issues abiertas en GitHub sin estructura de épicas, sin labels, sin project board.

**Compromiso Sprint 1 (06/05 → 13/05):** Catálogo de productos mockeado + agregar al carrito + crear pedido (todo mockeado, sin login ni backend real).

---

## 2. Backend contracts conocidos

El backend pasó por ahora únicamente la sección 4 del documento de contratos (eventos WebSocket). Lo que se sabe:

- **Endpoint WS:** `ws://<host>/ws?token=<JWT>` (autenticación con JWT en query string)
- **Convención de campos:** `snake_case` (`user_id`, `order_id`, `vehicle_id`, `current_stock`)
- **Envelope de eventos:** `{ "event": "<nombre>", "payload": { ... } }`
- **Eventos relevantes para mobile:**
  - `connected` — handshake inicial (user_id, role)
  - `order.updated` — cambios de estado de orden (assigned_vehicle_id, started_at)
  - `vehicle.updated` — telemetría de rover (status, position, battery, current_order_id)
  - `vehicle.error` — errores de rover (CONNECTION_LOST, etc.)
  - `stock.alert` — stock por debajo del mínimo
- **Reconexión:** el backend NO replay-ea eventos perdidos. Los clientes deben hacer REST fetch del estado al reconectar antes de re-suscribirse.

**Pendiente del backend (bloquea Sprint 2):** secciones 1-3 del documento — endpoints REST de productos/órdenes, contrato de auth/login, formato de JWT.

---

## 3. Estructura de épicas

Se adopta un modelo de **9 épicas** representadas en GitHub como issues padre con sub-issues nativas (feature GA de GitHub). Cada épica tiene un alcance funcional bien delimitado.

| ID | Épica | Prioridad | Estado | Bloqueada por |
|----|-------|-----------|--------|---------------|
| E0 | Initial Project Setup | — | ✅ Done | — |
| E1 | API Contracts & Coordinación con Backend | P0 | Backlog | — |
| E2 | Login | P0 | Backlog | E1 (subset auth) |
| E3 | Catálogo de Productos | P0 | Backlog | E1 (subset product) |
| E4 | Carrito y Creación de Orden | P0 | Backlog | E3 (catálogo necesario) |
| E5 | Seguimiento de Órdenes | P1 | Backlog | E4 + E1 (subset WS) |
| E6 | Olvidé mi Contraseña | P2 | Backlog | E2 |
| E7 | UX Cross-cutting | P1 | Backlog | — (paraleliza) |
| E8 | Testing & QA | P1 | Backlog | — (paraleliza) |

---

## 4. Mapeo a sprints

### Sprint 1 (06/05 → 13/05) — Goal: catálogo + carrito + crear orden, todo mockeado

Épicas activas: **E1 (subset)**, **E3 (mock)**, **E4 (mock)**, **E7 (mínima)**.

No incluye: login, auth real, WebSocket, integración real con backend, seguimiento de orden, forgot password, testing exhaustivo.

### Sprint 2 (13/05 → 27/05) — Login + Integración Real

Épicas activas: **E2**, **E1 (expansion REST + WS + auth)**, **E3.real**, **E4.real**, **E5**.

Depende de que el backend entregue las secciones 1-3 del doc de contratos.

### Sprint 3 (27/05 → 17/06) — Pulido + Secundarios + Demo Hito 2

Épicas activas: **E6**, **E5 (expansion)**, **E8**, hardening + preparación demo.

---

## 5. Subtareas detalladas — Sprint 1

Granularidad objetivo: ~4 horas por subtarea.

### E1 — API Contracts (subset Sprint 1) — P0

- E1.1 Definir JSON schema de **Product** con ejemplo completo (snake_case)
- E1.2 Definir JSON schema de **Order** + **OrderItem** con ejemplo
- E1.3 Definir enum **OrderStatus**: `pending, assigned, in_progress, picked_up, delivering, delivered, failed`
- E1.4 Crear `docs/contracts/product.md`, `docs/contracts/order.md`, `docs/contracts/README.md`
- E1.5 Documentar decisiones tomadas (snake_case, JWT en query string, no replay de eventos perdidos)

### E3 — Catálogo (mock) — P0

- E3.1 Setup feature package `catalog` (carpeta, pubspec, pubspec_overrides, registro en melos)
- E3.2 Domain: modelos `Product` y `Category` con freezed
- E3.3 Domain: interface `CatalogRepository`
- E3.4 Data: `MockCatalogRepository` con dataset hardcodeado de ~10 productos
- E3.5 Presentation: `CatalogCubit` + `CatalogState` (loading, loaded, error, filtered)
- E3.6 UI: widget `ProductCard` reusable (thumb, nombre, stock, precio)
- E3.7 UI: `CatalogPage` con BlocBuilder + lista scrollable
- E3.8 UI: estados vacío / error con retry / loading skeleton
- E3.9 UI: search bar + lógica de filtrado por nombre o SKU en el cubit
- E3.10 UI: chips de filtro por categoría + lógica
- E3.11 UI: `ProductDetailPage` con info completa + botón CTA "Agregar al carrito" (handler queda en E4.9)
- E3.12 Routing: rutas `/catalog`, `/catalog/:id` con Beamer
- E3.13 Wire-up: tab "Productos" en bottom navigation

**Dependencias internas:**
- E3.7 depende de E3.6
- E3.8 depende de E3.7
- E3.11 entrega botón CTA pero el handler de "agregar al carrito" lo cierra E4.9

### E4 — Carrito + Crear Orden (mock) — P0 — bloqueada por E3.4

- E4.1 Setup feature package `cart`
- E4.2 Setup feature package `orders`
- E4.3 Domain: modelos `Cart`, `CartItem`, `Order`, `OrderItem`, `OrderStatus`
- E4.4 Domain: interfaces `CartRepository` + `OrderRepository`
- E4.5 Data: `InMemoryCartRepository` (singleton via IoC)
- E4.6 Data: `MockOrderRepository` (devuelve `Order` con id generado y `status: pending`)
- E4.7 Presentation: `CartCubit` (add, remove, updateQty, clear, total)
- E4.8 Presentation: `CreateOrderCubit` (submit, success, error)
- E4.9 UI: botón "Agregar al carrito" + handler en `ProductDetailPage` (cierra E3.11)
- E4.10 UI: `CartPage` con lista de items
- E4.11 UI: stepper de cantidad (+/-) por item
- E4.12 UI: validaciones (qty > 0, qty ≤ stock)
- E4.13 UI: footer con total + botón "Crear orden"
- E4.14 UI: `CreateOrderConfirmationDialog`
- E4.15 UI: `OrderSuccessPage` (muestra `ORD-XXXX` + CTA volver al catálogo)
- E4.16 UI: manejo de error de submit (snackbar con retry)
- E4.17 Routing: rutas `/cart`, `/cart/confirm`, `/order/:id/success`
- E4.18 Wire-up: badge con cantidad de items en tab Cart

### E7 — UX mínima Sprint 1 — P1

- E7.1 `LoadingSpinner` widget en `design_system`
- E7.2 `LoadingSkeleton` widget en `design_system`
- E7.3 `ErrorView` widget con retry callback
- E7.4 `EmptyView` widget reusable
- E7.5 Setup Beamer routing root + locations (consume rutas de E3.12 y E4.17)
- E7.6 Bypass de auth gate en `main.dart` (skip directo al catálogo durante Sprint 1)
- E7.7 Configurar `BottomNavigationScaffold` con tabs: Catálogo, Carrito, Órdenes (placeholder)

### E0 — Initial Project Setup (cerrada → Done)

Issue única, ya completada y cerrada al crearse. Body documenta que el setup cubre Melos, packages base, IoC, beamer, bloc, splash, scaffold de features y token_repository. Referencia al PR #9 y al commit `c51ea3b`.

---

## 6. Sprint 2 y 3 — Granularidad gruesa (a detallar antes de cada sprint)

### Sprint 2 — Login + Integración Real

| Épica | Alcance |
|-------|---------|
| **E2 Login** P0 | UI de login completa, validación email/password, integración con endpoint REST real, persistencia de JWT en `token_repository`, manejo de errores (credenciales inválidas, timeout, 401, etc.) |
| **E1.6 Contratos REST** P0 | Cuando backend entregue secciones 1-3 — endpoints de productos/órdenes/auth |
| **E1.7 Contratos WebSocket** P0 | Formalizar envelope + eventos del doc actual del backend |
| **E3.real** P0 | `RemoteCatalogRepository` consumiendo `GET /products`. Toggle mock/real vía IoC. |
| **E4.real** P0 | `RemoteOrderRepository` consumiendo `POST /orders`. |
| **E5 Seguimiento de Órdenes** P1 | Suscripción WS al evento `order.updated`, lista de órdenes del usuario, detalle con timeline de estados, REST fetch de estado al conectar/reconectar (siguiendo guideline del backend). |

### Sprint 3 — Pulido + Secundarios + Demo Hito 2

| Épica | Alcance |
|-------|---------|
| **E6 Forgot Password** P2 | Flujo: email → request reset → confirmación. Endpoints definidos por backend. |
| **E5.expand** P1 | `vehicle.updated` en pantalla de detalle de orden (posición del rover, batería). `stock.alert` opcional en catálogo. |
| **E8 Testing & QA** P1 | Tests unitarios de cubits críticos, widget tests de pantallas, integración con mocks. |
| **Hardening** | Preparación demo Hito 2: pulido UX, manejo de errores robusto, splash, iconos, build APK Android. |

---

## 7. GitHub — Mecanismo

### Sub-issues nativas

GitHub soporta sub-issues nativamente (feature GA). Cada épica es una issue padre con label `type:epic`; cada subtarea es una issue hija enlazada como sub-issue. Se renderiza con árbol en la UI.

### Labels

| Label | Uso |
|-------|-----|
| `type:epic` | Marca issues padre |
| `priority:P0` `priority:P1` `priority:P2` | Prioridad del trabajo |
| `area:contracts` `area:auth` `area:catalog` `area:cart` `area:orders` `area:ux` `area:qa` | Dominio funcional |
| `sprint:1` `sprint:2` `sprint:3` | Asignación a sprint |
| `blocked` | Hay dependencia sin resolver |
| `mock` `real` | Identifica la variante (mock vs endpoint real) |

### Project board (5 columnas)

| Columna | Cuándo entra | Trigger |
|---------|--------------|---------|
| **Backlog** | Issue creada, sin asignar o sin sprint en curso | Default |
| **In Progress** | Issue asignada y desarrollo empezó | Issue assigned |
| **Pending Approval** | PR abierta cerrando la issue | PR opened linkeado |
| **QA** | PR mergeado, falta validar feature funcionalmente | PR merged |
| **Done** | QA validó y la issue está cerrada | Issue closed |

E0 (Initial Setup) entra **directamente como issue cerrada en Done** para dejar el registro histórico del trabajo ya completado.

### Issue de E0 — body propuesto

```markdown
## Summary
Setup base del proyecto Flutter con arquitectura modular completado y mergeado.

## Done
- Melos workspace configurado
- Packages base: `commons`, `core`, `design_system`
- IoC manager y `EnvironmentConfig`
- Routing con Beamer
- State management con flutter_bloc
- Splash screen (flutter_native_splash)
- Scaffold de features: `auth`, `login`, `bottom_navigation_bar`
- `token_repository` con persistencia local
- Fonts (Satoshi) y assets configurados

## Referencias
- PR #9: base project structure with modular architecture
- Commit c51ea3b: fix base config
```

### Reorganización de issues existentes

| Issue actual | Acción |
|--------------|--------|
| #1 Definición de contratos | Convertir en E1 (épica padre); su body actual se distribuye en E1.1–E1.4 |
| #2 Crear catálogo en frontend | Convertir en E3 (épica padre); su body actual se distribuye en E3.6–E3.10 |
| #3 Creación de órdenes | Convertir en E4 (épica padre); su body actual se distribuye en E4.7–E4.13 |
| #4 Integración real del backend | Cerrar; su contenido se reparte entre E3.real y E4.real (sprint 2) |
| #6 UX básica de app | Convertir en E7 (épica padre) |
| #7 Testing y calidad | Convertir en E8 (épica padre) |
| #8 Responder preguntas para el backend | Cerrar; respuestas se documentan en E1.5 |

---

## 8. Conteo y métricas

- **9 épicas** (1 cerrada + 8 abiertas)
- **Sprint 1:** 4 épicas activas, ~43 subtareas, ~170 hs estimadas (5 personas × 7 días × ~5 hs útiles ≈ ajustado)
- **Sprint 2:** 6 épicas, ~30-40 subtareas a detallar
- **Sprint 3:** 4 épicas, ~25-30 subtareas a detallar
- **Total proyectado para Hito 2:** ~100 issues entre épicas y subtareas

---

## 9. Riesgos y supuestos

- **R1:** Backend no entrega secciones 1-3 antes del 13/05. Mitigación: Sprint 1 está 100% mockeado, por lo que no hay bloqueo. El riesgo se materializa en Sprint 2.
- **R2:** Cambios de contrato del backend después del Sprint 1 → adaptar mocks. Mitigación: el toggle mock/real vía IoC reduce el costo de cambio.
- **R3:** Sub-issues nativas requieren API REST de GitHub vía gh CLI o extensión `gh sub-issue`. Mitigación: si falla, fallback a task lists con checkboxes en el body de la épica.
- **R4:** Project board v2 requiere scope `read:project` y `project` en el token de gh. Mitigación: usuario debe correr `gh auth refresh -s read:project,project` antes de la fase de creación.

---

## 10. Salida esperada de la siguiente fase (writing-plans)

Plan de implementación que incluya:
1. Configuración de labels en el repo (un comando por label).
2. Reorganización de las 7 issues existentes (cierre o conversión a épicas).
3. Creación de las 9 épicas (E0-E8) con sus bodies.
4. Creación de las ~43 subtareas del Sprint 1 enlazadas como sub-issues.
5. Creación del Project board con 5 columnas y automatizaciones.
6. Asignación inicial de sprint:1 / priority a todas las issues de Sprint 1.
7. Cerrar E0 al toque para que aparezca en Done.

El plan se ejecutará en lotes con checkpoints de revisión para evitar crear ~70 issues sin que el usuario pueda corregir mid-flight.
