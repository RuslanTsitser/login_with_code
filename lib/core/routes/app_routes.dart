import 'package:flutter/material.dart';

import '../../features/profile/auth/presentation/confirm_code_page.dart';
import '../../features/profile/auth/presentation/register_page.dart';
import '../../features/profile/update/presentation/user_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    AppRoute.register.value: (context) => const RegisterPage(),
    AppRoute.confirmCode.value: (context) => const ConfirmCodePage(),
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
