import 'package:cart/src/domain/entities/cart.dart';
import 'package:cart/src/domain/repositories/cart_repository.dart';
import 'package:catalog/catalog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<Cart> {
  CartCubit(this._repository) : super(_repository.current);

  final CartRepository _repository;

  void add(Product product, {int quantity = 1}) {
    _repository.add(product, quantity: quantity);
    emit(_repository.current);
  }

  void remove(String productId) {
    _repository.remove(productId);
    emit(_repository.current);
  }

  void updateQuantity(String productId, int quantity) {
    _repository.updateQuantity(productId, quantity);
    emit(_repository.current);
  }

  void clear() {
    _repository.clear();
    emit(_repository.current);
  }
}
