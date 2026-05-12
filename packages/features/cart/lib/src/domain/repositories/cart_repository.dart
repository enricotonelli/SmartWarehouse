import 'package:cart/src/domain/entities/cart.dart';
import 'package:catalog/catalog.dart';

abstract class CartRepository {
  Cart get current;

  void add(Product product, {int quantity = 1});

  void remove(String productId);

  void updateQuantity(String productId, int quantity);

  void clear();
}
