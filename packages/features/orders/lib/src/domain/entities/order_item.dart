class OrderItem {
  const OrderItem({
    required this.productId,
    required this.productName,
    required this.quantity,
    this.unitPrice,
  });

  final String productId;
  final String productName;
  final int quantity;

  /// `null` when the backend product has no price.
  final double? unitPrice;

  double? get subtotal {
    final p = unitPrice;
    return p == null ? null : p * quantity;
  }
}
