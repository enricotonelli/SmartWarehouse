import 'package:catalog/catalog.dart';

class CartItem {
  const CartItem({required this.product, required this.quantity});

  final Product product;
  final int quantity;

  /// `null` when the product has no price (warehouse backend).
  double? get subtotal {
    final p = product.price;
    return p == null ? null : p * quantity;
  }

  CartItem copyWith({int? quantity}) =>
      CartItem(product: product, quantity: quantity ?? this.quantity);
}
