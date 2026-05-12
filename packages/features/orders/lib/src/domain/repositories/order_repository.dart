import 'package:dartz/dartz.dart' hide Order;
import 'package:orders/src/domain/entities/order.dart';
import 'package:orders/src/domain/entities/order_item.dart';

class OrderFailure {
  const OrderFailure([this.message]);
  final String? message;
}

abstract class OrderRepository {
  Future<Either<OrderFailure, Order>> create(List<OrderItem> items);
}
