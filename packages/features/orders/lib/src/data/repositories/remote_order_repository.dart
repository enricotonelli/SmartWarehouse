import 'dart:developer';

import 'package:commons/commons.dart';
import 'package:commons/helpers/http/entities/http_response_error.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:orders/src/domain/entities/order.dart';
import 'package:orders/src/domain/entities/order_item.dart';
import 'package:orders/src/domain/entities/order_status.dart';
import 'package:orders/src/domain/repositories/order_repository.dart';

/// Talks to `POST /orders` on the SmartWarehouse backend.
///
/// Request shape (snake_case): `{ items: [{product_id, quantity}], destination_area }`.
/// The backend doesn't carry monetary fields — the returned [Order.total] is
/// computed locally from the items the caller already had on hand.
class RemoteOrderRepository implements OrderRepository {
  RemoteOrderRepository({required this.httpHelper, this.destinationArea = 'AREA-A'});

  final HttpHelper httpHelper;

  /// Hardcoded for now — UI doesn't collect this. The backend rejects orders
  /// without it.
  final String destinationArea;

  @override
  Future<Either<OrderFailure, Order>> create(List<OrderItem> items) async {
    try {
      final result = await httpHelper.post(
        '/orders',
        data: {
          'items': items
              .map((i) => {'product_id': i.productId, 'quantity': i.quantity})
              .toList(),
          'destination_area': destinationArea,
        },
      );
      return result.fold(
        (error) => Left(OrderFailure(_mapError(error))),
        (response) {
          final data = response.data;
          if (data is! Map<String, dynamic>) {
            return const Left(OrderFailure('Respuesta inválida'));
          }
          final raw = data['order'];
          if (raw is! Map<String, dynamic>) {
            return const Left(OrderFailure('Respuesta inválida'));
          }
          return Right(_parseOrder(raw, fallbackItems: items));
        },
      );
    } catch (e, st) {
      log('createOrder error', error: e, stackTrace: st);
      return const Left(OrderFailure('Error de red'));
    }
  }

  String _mapError(HttpResponseError error) {
    if (error.statusCode == 401 || error.statusCode == 403) {
      return 'No tenés permisos para crear órdenes';
    }
    if (error.statusCode == 400) {
      return error.message ?? 'Datos inválidos en la orden';
    }
    return error.message ?? 'No se pudo crear la orden';
  }

  Order _parseOrder(Map<String, dynamic> json, {required List<OrderItem> fallbackItems}) {
    final id = (json['id'] as String?) ?? '';
    final status = _parseStatus(json['status'] as String?);
    final itemsJson = json['items'] as List?;
    final items = (itemsJson ?? const [])
        .whereType<Map<String, dynamic>>()
        .map((j) => OrderItem(
              productId: (j['product_id'] as String?) ?? '',
              productName: '',
              unitPrice: 0,
              quantity: (j['quantity'] as num?)?.toInt() ?? 0,
            ))
        .toList(growable: false);

    // Backend returns items without product names or prices; preserve the
    // caller's view of items for UI continuity when available.
    final mergedItems = items.isEmpty ? fallbackItems : items;

    final tsJson = json['timestamps'];
    DateTime createdAt = DateTime.now();
    if (tsJson is Map<String, dynamic>) {
      final created = tsJson['created_at'] as String?;
      if (created != null) {
        createdAt = DateTime.tryParse(created) ?? createdAt;
      }
    }

    return Order(
      id: id,
      items: mergedItems,
      total: fallbackItems.any((i) => i.subtotal == null)
          ? null
          : fallbackItems.fold<double>(0, (sum, i) => sum + (i.subtotal ?? 0)),
      status: status,
      createdAt: createdAt,
    );
  }

  OrderStatus _parseStatus(String? raw) {
    switch (raw?.toLowerCase()) {
      case 'pending':
        return OrderStatus.pending;
      case 'in_progress':
      case 'confirmed':
        return OrderStatus.confirmed;
      case 'shipped':
        return OrderStatus.shipped;
      case 'completed':
      case 'delivered':
        return OrderStatus.delivered;
      case 'cancelled':
        return OrderStatus.cancelled;
      default:
        return OrderStatus.pending;
    }
  }
}
