import 'package:commons/helpers/injector/injector.dart';
import 'package:flutter/widgets.dart';
import 'package:orders/src/data/repositories/mock_order_repository.dart';
import 'package:orders/src/domain/repositories/order_repository.dart';
import 'package:orders/src/presentation/bloc/create_order_cubit.dart';
import 'package:orders/src/presentation/pages/order_success_page.dart';

export 'presentation/bloc/create_order_cubit.dart';

class OrdersFeatureBuilder {
  static void injectDependencies() {
    Injector.i
      ..registerLazySingleton<OrderRepository>(MockOrderRepository.new)
      ..registerLazySingleton<CreateOrderCubit>(
        () => CreateOrderCubit(Injector.i.resolve<OrderRepository>()),
      );
  }

  static Widget buildOrderSuccessPage(String orderId) {
    return OrderSuccessPage(orderId: orderId);
  }
}
