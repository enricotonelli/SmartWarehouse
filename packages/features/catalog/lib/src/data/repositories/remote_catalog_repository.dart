import 'dart:developer';

import 'package:catalog/src/domain/entities/category.dart';
import 'package:catalog/src/domain/entities/product.dart';
import 'package:catalog/src/domain/repositories/catalog_repository.dart';
import 'package:commons/commons.dart';
import 'package:dartz/dartz.dart';

/// Talks to the SmartWarehouse REST API:
///   GET /products?category=&search=&isActive=
///   GET /products/{id}
///
/// Backend uses snake_case JSON. There is no `price` field; the local
/// [Product.price] stays `null` for products coming from the real API.
class RemoteCatalogRepository implements CatalogRepository {
  RemoteCatalogRepository({required this.httpHelper});

  final HttpHelper httpHelper;

  @override
  Future<Either<CatalogFailure, List<Product>>> getProducts() async {
    try {
      final result = await httpHelper.get('/products');
      return result.fold(
        (error) => Left(CatalogFailure(error.message ?? 'Error obteniendo productos')),
        (response) {
          final data = response.data;
          if (data is! Map<String, dynamic>) {
            return const Left(CatalogFailure('Respuesta inválida'));
          }
          final list = (data['products'] as List?) ?? const [];
          return Right(
            list
                .whereType<Map<String, dynamic>>()
                .map(_parseProduct)
                .toList(growable: false),
          );
        },
      );
    } catch (e, st) {
      log('getProducts error', error: e, stackTrace: st);
      return const Left(CatalogFailure('Error de red'));
    }
  }

  @override
  Future<Either<CatalogFailure, List<Category>>> getCategories() async {
    // Backend has no /categories endpoint — derive uniques from /products.
    final productsResult = await getProducts();
    return productsResult.map(
      (products) {
        final seen = <String>{};
        final out = <Category>[];
        for (final p in products) {
          if (seen.add(p.category.id)) out.add(p.category);
        }
        return out;
      },
    );
  }

  @override
  Future<Either<CatalogFailure, Product>> getProductById(String id) async {
    try {
      final result = await httpHelper.get('/products/$id');
      return result.fold(
        (error) {
          if (error.statusCode == 404) {
            return const Left(CatalogFailure('Producto no encontrado'));
          }
          return Left(CatalogFailure(error.message ?? 'Error obteniendo producto'));
        },
        (response) {
          final data = response.data;
          if (data is! Map<String, dynamic>) {
            return const Left(CatalogFailure('Respuesta inválida'));
          }
          final raw = data['product'];
          if (raw is! Map<String, dynamic>) {
            return const Left(CatalogFailure('Respuesta inválida'));
          }
          return Right(_parseProduct(raw));
        },
      );
    } catch (e, st) {
      log('getProductById error', error: e, stackTrace: st);
      return const Left(CatalogFailure('Error de red'));
    }
  }

  Product _parseProduct(Map<String, dynamic> json) {
    final categorySlug = (json['category'] as String?) ?? 'other';
    final stockJson = json['stock'];
    final available = stockJson is Map<String, dynamic>
        ? (stockJson['available'] as num?)?.toInt()
        : null;
    return Product(
      id: (json['id'] as String?) ?? '',
      sku: (json['sku'] as String?) ?? '',
      name: (json['name'] as String?) ?? '',
      category: _categoryFromSlug(categorySlug),
      imageUrl: json['image_url'] as String?,
      description: json['description'] as String?,
      stock: available,
      // price is intentionally not provided by the warehouse backend
    );
  }

  Category _categoryFromSlug(String slug) {
    final name = slug.isEmpty
        ? 'Otros'
        : slug[0].toUpperCase() + slug.substring(1).replaceAll('_', ' ');
    return Category(id: slug, name: name);
  }
}
