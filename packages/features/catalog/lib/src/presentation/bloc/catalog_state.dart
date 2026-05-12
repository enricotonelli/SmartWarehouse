import 'package:catalog/src/domain/entities/category.dart';
import 'package:catalog/src/domain/entities/product.dart';

sealed class CatalogState {
  const CatalogState();
}

class CatalogLoading extends CatalogState {
  const CatalogLoading();
}

class CatalogError extends CatalogState {
  const CatalogError(this.message);
  final String message;
}

class CatalogReady extends CatalogState {
  const CatalogReady({
    required this.allProducts,
    required this.categories,
    required this.query,
    required this.selectedCategoryId,
  });

  final List<Product> allProducts;
  final List<Category> categories;
  final String query;
  final String? selectedCategoryId;

  List<Product> get visibleProducts {
    return allProducts.where((p) {
      final matchesQuery = p.matchesQuery(query);
      final matchesCategory =
          selectedCategoryId == null || p.category.id == selectedCategoryId;
      return matchesQuery && matchesCategory;
    }).toList(growable: false);
  }

  bool get isEmpty => visibleProducts.isEmpty;

  CatalogReady copyWith({
    List<Product>? allProducts,
    List<Category>? categories,
    String? query,
    Object? selectedCategoryId = _sentinel,
  }) {
    return CatalogReady(
      allProducts: allProducts ?? this.allProducts,
      categories: categories ?? this.categories,
      query: query ?? this.query,
      selectedCategoryId: identical(selectedCategoryId, _sentinel)
          ? this.selectedCategoryId
          : selectedCategoryId as String?,
    );
  }
}

const Object _sentinel = Object();
