import 'package:cart/src/domain/entities/cart.dart';
import 'package:cart/src/domain/entities/cart_item.dart';
import 'package:cart/src/domain/repositories/cart_repository.dart';
import 'package:catalog/catalog.dart';

class InMemoryCartRepository implements CartRepository {
  final List<CartItem> _items = [];

  @override
  Cart get current => Cart(items: List.unmodifiable(_items));

  @override
  void add(Product product, {int quantity = 1}) {
    if (quantity <= 0) return;
    final index = _items.indexWhere((i) => i.product.id == product.id);
    if (index == -1) {
      _items.add(CartItem(product: product, quantity: quantity));
    } else {
      final existing = _items[index];
      _items[index] = existing.copyWith(quantity: existing.quantity + quantity);
    }
  }

  @override
  void remove(String productId) {
    _items.removeWhere((i) => i.product.id == productId);
  }

  @override
  void updateQuantity(String productId, int quantity) {
    final index = _items.indexWhere((i) => i.product.id == productId);
    if (index == -1) return;
    if (quantity <= 0) {
      _items.removeAt(index);
      return;
    }
    _items[index] = _items[index].copyWith(quantity: quantity);
  }

  @override
  void clear() => _items.clear();
}
