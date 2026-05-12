import 'package:dartz/dartz.dart';
import 'package:login/src/domain/entities/auth_tokens.dart';
import 'package:login/src/domain/entities/login_credentials.dart';
import 'package:login/src/domain/entities/login_failure.dart';

abstract class LoginRepository {
  Future<Either<LoginFailure, AuthTokens>> login(LoginCredentials credentials);

  // OTP flow (no usado en Sprint 2; queda por si se reintroduce).
  Future<Option<LoginFailure>> authenticateEmail(String email);
}
