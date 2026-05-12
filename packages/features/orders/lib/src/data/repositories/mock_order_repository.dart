import 'dart:math';

import 'package:dartz/dartz.dart' hide Order;
import 'package:orders/src/domain/entities/order.dart';
import 'package:orders/src/domain/entities/order_item.dart';
import 'package:orders/src/domain/entities/order_status.dart';
import 'package:orders/src/domain/repositories/order_repository.dart';

class MockOrderRepository implements OrderRepository {
  MockOrderRepository({this.forceFailure = false});

  // Cambiar a `true` en dev para ejercitar el retry de E4.16.
  final bool forceFailure;

  final _random = Random();

  @override
  Future<Either<OrderFailure, Order>> create(List<OrderItem> items) async {
    await Future<void>.delayed(const Duration(milliseconds: 600));

    if (forceFailure) {
      return const Left(OrderFailure('No se pudo crear la orden. Intentá de nuevo.'));
    }

    final id = 'ORD-${_random.nextInt(9000) + 1000}';
    final total = items.fold<double>(0, (sum, i) => sum + i.subtotal);
    return Right(Order(
      id: id,
      items: List.unmodifiable(items),
      total: total,
      status: OrderStatus.pending,
      createdAt: DateTime.now(),
    ));
  }
}
