import 'package:commons/helpers/http/http_helper.dart';
import 'package:commons/helpers/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:login/src/data/repositories/mock_login_repository.dart';
import 'package:login/src/data/repositories/remote_login_repository.dart';
import 'package:login/src/domain/entities/auth_tokens.dart';
import 'package:login/src/domain/repositories/login_repository.dart';
import 'package:login/src/presentation/bloc/login/login_cubit.dart';
import 'package:login/src/presentation/bloc/login_form/login_form_cubit.dart';
import 'package:login/src/presentation/pages/login_page.dart';

class LoginFeatureBuilder {
  static const path = '/login';

  /// `true` uses [MockLoginRepository] (acepta `test@test.com / Test1234`).
  /// `false` POSTea contra `/auth/login` en el backend real.
  static bool useMock = false;

  static LoginRepository _resolveRepository() {
    return useMock
        ? MockLoginRepository()
        : RemoteLoginRepository(httpHelper: Injector.i.resolve<HttpHelper>());
  }

  static Widget buildPage({
    required void Function(BuildContext context, AuthTokens tokens) onLoginSuccess,
  }) {
    final formCubit = LoginFormCubit();
    final loginCubit = LoginCubit(_resolveRepository());
    return LoginPage(
      formCubit: formCubit,
      loginCubit: loginCubit,
      onLoginSuccess: onLoginSuccess,
    );
  }
}
