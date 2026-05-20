import 'package:catalog/src/domain/entities/product.dart';

class ProductsPage {
  const ProductsPage({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.total,
    required this.hasNext,
  });

  final List<Product> items;
  final int page;
  final int pageSize;
  final int total;
  final bool hasNext;

  static const empty = ProductsPage(
    items: [],
    page: 1,
    pageSize: 20,
    total: 0,
    hasNext: false,
  );
}
