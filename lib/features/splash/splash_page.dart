import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../profile/auth/logic/cubit/auth_cubit.dart';
import '../profile/auth/presentation/register_page.dart';
import '../profile/update/presentation/user_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late AuthCubit authCubit;

  @override
  void initState() {
    super.initState();
    authCubit = context.read<AuthCubit>();
    authCubit.checkUser();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is Authenticated) {
          return UserPage();
        }
        if (state is Unauthenticated || state is Failure) {
          return const RegisterPage();
        }
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.flutter_dash,
                  size: 150,
                ),
                SizedBox(height: 16),
                LinearProgressIndicator(),
              ],
            ),
          ),
        );
      },
    );
  }
}
