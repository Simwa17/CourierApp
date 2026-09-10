import '../entities/order.dart';

abstract class OrderRepository {
  Future<Order> createOrder({
    required String recipientName,
    required String address,
  });

  Future<Order?> getOrderById(String id);

  Future<Order?> advanceOrderStatus(String id);
}
