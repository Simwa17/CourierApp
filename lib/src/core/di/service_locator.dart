import 'package:get_it/get_it.dart';

import '../../data/repositories/in_memory_order_repository.dart';
import '../../domain/repositories/order_repository.dart';
import '../../domain/usecases/create_order_use_case.dart';
import '../../domain/usecases/get_order_status_use_case.dart';
import '../config/app_config.dart';
import '../config/app_environment.dart';
import '../logging/app_logger.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies(AppEnvironment environment) async {
  getIt.reset();

  getIt
    ..registerSingleton<AppConfig>(AppConfig.fromEnvironment(environment))
    ..registerLazySingleton<AppLogger>(AppLogger.new)
    ..registerLazySingleton<OrderRepository>(InMemoryOrderRepository.new)
    ..registerFactory<CreateOrderUseCase>(() => CreateOrderUseCase(getIt()))
    ..registerFactory<GetOrderStatusUseCase>(() => GetOrderStatusUseCase(getIt()));
}
