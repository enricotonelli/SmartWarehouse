import 'package:orders/src/domain/entities/order_item.dart';
import 'package:orders/src/domain/entities/order_status.dart';

class Order {
  const Order({
    required this.id,
    required this.items,
    required this.total,
    required this.status,
    required this.createdAt,
  });

  final String id;
  final List<OrderItem> items;
  final double total;
  final OrderStatus status;
  final DateTime createdAt;
}
