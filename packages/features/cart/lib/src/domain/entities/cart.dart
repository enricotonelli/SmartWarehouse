import 'package:cart/src/domain/entities/cart_item.dart';

class Cart {
  const Cart({required this.items});

  factory Cart.empty() => const Cart(items: []);

  final List<CartItem> items;

  int get itemCount => items.fold(0, (sum, i) => sum + i.quantity);

  double get total => items.fold(0.0, (sum, i) => sum + i.subtotal);

  bool get isEmpty => items.isEmpty;

  bool get isNotEmpty => items.isNotEmpty;

  int quantityOf(String productId) {
    final match = items.where((i) => i.product.id == productId);
    if (match.isEmpty) return 0;
    return match.first.quantity;
  }
}
