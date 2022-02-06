import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:login_with_code/core/credentials_storage/secure_credentials_storage.dart';
import 'package:login_with_code/core/data/repositories/user_repository.dart';
import 'package:login_with_code/core/routes/app_routes.dart';
import 'package:login_with_code/features/splash/splash_page.dart';

import 'features/profile/auth/logic/cubit/auth_cubit.dart';
import 'features/profile/update/logic/cubit/update_user_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _storage = FlutterSecureStorage();
    final _userRepository = UserRepository();
    final _secureCredentialStorage = SecureCredentialsStorage(_storage);
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
            create: (_) =>
                AuthCubit(_userRepository, _secureCredentialStorage)),
        BlocProvider<UpdateUserCubit>(
            create: (_) =>
                UpdateUserCubit(_userRepository, _secureCredentialStorage)),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashPage(),
        routes: AppRoutes.routes,
      ),
    );
  }
}
