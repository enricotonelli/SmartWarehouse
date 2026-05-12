import 'package:orders/src/domain/entities/order.dart';

sealed class CreateOrderState {
  const CreateOrderState();
}

class CreateOrderIdle extends CreateOrderState {
  const CreateOrderIdle();
}

class CreateOrderSubmitting extends CreateOrderState {
  const CreateOrderSubmitting();
}

class CreateOrderSuccess extends CreateOrderState {
  const CreateOrderSuccess(this.order);
  final Order order;
}

class CreateOrderFailure extends CreateOrderState {
  const CreateOrderFailure(this.message);
  final String message;
}
