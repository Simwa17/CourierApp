import 'package:courier_app/src/data/repositories/in_memory_order_repository.dart';
import 'package:courier_app/src/domain/entities/order.dart';
import 'package:courier_app/src/domain/usecases/create_order_use_case.dart';
import 'package:courier_app/src/domain/usecases/get_order_status_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Order use cases', () {
    test('creates order and advances status', () async {
      final InMemoryOrderRepository repository = InMemoryOrderRepository();
      final CreateOrderUseCase createOrder = CreateOrderUseCase(repository);
      final GetOrderStatusUseCase getStatus = GetOrderStatusUseCase(repository);

      final Order order = await createOrder(
        recipientName: 'Alice',
        address: 'Main Street',
      );

      expect(order.status, OrderStatus.created);

      final Order? advanced = await getStatus.advance(order.id);
      expect(advanced?.status, OrderStatus.pickedUp);
    });
  });
}
