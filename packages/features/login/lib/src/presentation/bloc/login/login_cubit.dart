import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/src/domain/entities/login_credentials.dart';
import 'package:login/src/domain/repositories/login_repository.dart';
import 'package:login/src/presentation/bloc/login/login_state.dart';

export 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._repository) : super(const LoginIdle());

  final LoginRepository _repository;

  Future<void> submit({required String email, required String password}) async {
    if (state is LoginSubmitting) return;
    emit(const LoginSubmitting());
    final result = await _repository.login(
      LoginCredentials(email: email, password: password),
    );
    result.fold(
      (failure) => emit(LoginFailureState(failure)),
      (tokens) => emit(LoginSuccess(tokens)),
    );
  }

  void reset() => emit(const LoginIdle());
}
