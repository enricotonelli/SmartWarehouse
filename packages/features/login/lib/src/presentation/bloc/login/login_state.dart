import 'package:login/src/domain/entities/auth_tokens.dart';
import 'package:login/src/domain/entities/login_failure.dart';

sealed class LoginState {
  const LoginState();
}

class LoginIdle extends LoginState {
  const LoginIdle();
}

class LoginSubmitting extends LoginState {
  const LoginSubmitting();
}

class LoginSuccess extends LoginState {
  const LoginSuccess(this.tokens);
  final AuthTokens tokens;
}

class LoginFailureState extends LoginState {
  const LoginFailureState(this.failure);
  final LoginFailure failure;
}
