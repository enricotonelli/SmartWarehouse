import 'package:cart/src/domain/entities/cart_item.dart';

class Cart {
  const Cart({required this.items});

  factory Cart.empty() => const Cart(items: []);

  final List<CartItem> items;

  int get itemCount => items.fold(0, (sum, i) => sum + i.quantity);

  /// Sum of subtotals or `null` if any item is priceless.
  double? get total {
    if (items.isEmpty) return 0;
    var sum = 0.0;
    for (final i in items) {
      final s = i.subtotal;
      if (s == null) return null;
      sum += s;
    }
    return sum;
  }

  bool get hasPrices => items.every((i) => i.subtotal != null);

  bool get isEmpty => items.isEmpty;

  bool get isNotEmpty => items.isNotEmpty;

  int quantityOf(String productId) {
    final match = items.where((i) => i.product.id == productId);
    if (match.isEmpty) return 0;
    return match.first.quantity;
  }
}
