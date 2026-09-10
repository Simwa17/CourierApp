enum OrderStatus { created, pickedUp, inTransit, delivered }

class Order {
  const Order({
    required this.id,
    required this.recipientName,
    required this.address,
    required this.status,
  });

  final String id;
  final String recipientName;
  final String address;
  final OrderStatus status;

  Order copyWith({OrderStatus? status}) {
    return Order(
      id: id,
      recipientName: recipientName,
      address: address,
      status: status ?? this.status,
    );
  }
}
