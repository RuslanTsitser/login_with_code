import 'package:flutter/material.dart';
import 'package:login_with_code/features/auth/presentation/confirm_code_page.dart';
import 'package:login_with_code/features/auth/presentation/register_page.dart';
import 'package:login_with_code/features/profile/presentation/user_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    AppRoute.register.value: (context) => RegisterPage(),
    AppRoute.confirmCode.value: (context) => ConfirmCodePage(),
    AppRoute.userPage.value: (context) => UserPage(),
  };
}

enum AppRoute { register, confirmCode, userPage }

extension RouteExtension on AppRoute {
  String get value {
    switch (this) {
      case AppRoute.register:
        return '/register';
      case AppRoute.confirmCode:
        return '/confirm-code';
      case AppRoute.userPage:
        return '/user';
    }
  }
}
