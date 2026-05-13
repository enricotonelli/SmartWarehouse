import 'package:catalog/src/domain/entities/category.dart';

class Product {
  const Product({
    required this.id,
    required this.sku,
    required this.name,
    required this.category,
    this.price,
    this.imageUrl,
    this.description,
    this.stock,
  });

  final String id;
  final String sku;
  final String name;
  final Category category;

  /// Nullable: the warehouse backend doesn't carry monetary fields. When the
  /// app is wired against mocks this is populated; against the real API it's
  /// null and price-related UI hides itself.
  final double? price;

  final String? imageUrl;
  final String? description;
  final int? stock;

  bool matchesQuery(String query) {
    if (query.isEmpty) return true;
    final q = query.toLowerCase();
    return name.toLowerCase().contains(q) || sku.toLowerCase().contains(q);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
