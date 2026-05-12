sealed class LoginFailure {
  const LoginFailure(this.message);
  final String message;
}

class InvalidCredentialsFailure extends LoginFailure {
  const InvalidCredentialsFailure()
      : super('Credenciales inválidas. Verificá tu email y contraseña.');
}

class NetworkFailure extends LoginFailure {
  const NetworkFailure()
      : super('Sin conexión a internet. Revisá tu red y reintentá.');
}

class TimeoutFailure extends LoginFailure {
  const TimeoutFailure()
      : super('La conexión tardó demasiado. Reintentá.');
}

class UnknownLoginFailure extends LoginFailure {
  const UnknownLoginFailure([super.message = 'Ocurrió un error. Reintentá.']);
}
