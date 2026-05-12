import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orders/src/domain/entities/order_item.dart';
import 'package:orders/src/domain/repositories/order_repository.dart';
import 'package:orders/src/presentation/bloc/create_order_state.dart';

export 'create_order_state.dart';

class CreateOrderCubit extends Cubit<CreateOrderState> {
  CreateOrderCubit(this._repository) : super(const CreateOrderIdle());

  final OrderRepository _repository;

  Future<void> submit(List<OrderItem> items) async {
    if (state is CreateOrderSubmitting) return;
    emit(const CreateOrderSubmitting());
    final result = await _repository.create(items);
    result.fold(
      (failure) => emit(CreateOrderFailure(failure.message ?? 'Error desconocido')),
      (order) => emit(CreateOrderSuccess(order)),
    );
  }

  void reset() => emit(const CreateOrderIdle());
}
