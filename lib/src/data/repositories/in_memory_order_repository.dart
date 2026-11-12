import '../../domain/entities/order.dart';
import '../../domain/repositories/order_repository.dart';

class InMemoryOrderRepository implements OrderRepository {
  final Map<String, Order> _orders = <String, Order>{};

  @override
  Future<Order> createOrder({
    required String recipientName,
    required String address,
  }) async {
    final String id = DateTime.now().microsecondsSinceEpoch.toString();
    final Order order = Order(
      id: id,
      recipientName: recipientName,
      address: address,
      status: OrderStatus.created,
    );
    _orders[id] = order;
    return order;
  }

  @override
  Future<Order?> getOrderById(String id) async {
    return _orders[id];
  }

  @override
  Future<Order?> advanceOrderStatus(String id) async {
    final Order? order = _orders[id];
    if (order == null) {
      return null;
    }

    final OrderStatus nextStatus = switch (order.status) {
      OrderStatus.created => OrderStatus.pickedUp,
      OrderStatus.pickedUp => OrderStatus.inTransit,
      OrderStatus.inTransit => OrderStatus.delivered,
      OrderStatus.delivered => OrderStatus.delivered,
    };

    final Order updated = order.copyWith(status: nextStatus);
    _orders[id] = updated;
    return updated;
  }
}
