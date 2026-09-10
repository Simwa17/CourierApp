import '../entities/order.dart';
import '../repositories/order_repository.dart';

class GetOrderStatusUseCase {
  GetOrderStatusUseCase(this._repository);

  final OrderRepository _repository;

  Future<Order?> call(String id) {
    return _repository.getOrderById(id);
  }

  Future<Order?> advance(String id) {
    return _repository.advanceOrderStatus(id);
  }
}
