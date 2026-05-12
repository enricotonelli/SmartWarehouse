import 'package:catalog/src/domain/entities/category.dart';
import 'package:catalog/src/domain/entities/product.dart';
import 'package:dartz/dartz.dart';

class CatalogFailure {
  const CatalogFailure([this.message]);
  final String? message;
}

abstract class CatalogRepository {
  Future<Either<CatalogFailure, List<Product>>> getProducts();

  Future<Either<CatalogFailure, List<Category>>> getCategories();

  Future<Either<CatalogFailure, Product>> getProductById(String id);
}
