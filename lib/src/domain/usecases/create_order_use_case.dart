import '../entities/order.dart';
import '../repositories/order_repository.dart';

class CreateOrderUseCase {
  CreateOrderUseCase(this._repository);

  final OrderRepository _repository;

  Future<Order> call({
    required String recipientName,
    required String address,
  }) {
    return _repository.createOrder(
      recipientName: recipientName,
      address: address,
    );
  }
}
