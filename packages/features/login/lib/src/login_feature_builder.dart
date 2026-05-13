import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:login/src/data/repositories/mock_login_repository.dart';
import 'package:login/src/data/repositories/remote_login_repository.dart';
import 'package:login/src/domain/repositories/login_repository.dart';
import 'package:login/src/presentation/bloc/login/login_cubit.dart';
import 'package:login/src/presentation/bloc/login_form/login_form_cubit.dart';
import 'package:login/src/presentation/pages/login_page.dart';

class LoginFeatureBuilder {
  static const path = '/login';

  static LoginRepository _resolveRepository() {
    return Injector.i.resolve<AppDataSource>().isMock
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
