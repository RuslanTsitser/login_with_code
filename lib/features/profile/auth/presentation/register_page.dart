import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_with_code/constants/elevated_button_style.dart';
import 'package:login_with_code/constants/text_field_decoration.dart';
import 'package:login_with_code/core/routes/app_routes.dart';

import '../logic/cubit/auth_cubit.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();

    Widget _usernameField() {
      return TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(color: Colors.black),
        controller: _controller,
        decoration: textFieldDecoration('Введите email', _controller),
      );
    }

    Widget _loginButton() {
      return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) => state.maybeMap(
          orElse: () {
            Navigator.of(context).pushNamed(AppRoute.confirmCode.value);
            return null;
          },
          loading: (_) {
            return null;
          },
          authenticated: (_) {
            return null;
          },
          failure: (value) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(value.failure!.map(
                    server: (message) => message.message!,
                    storage: (_) => ''))));

            return null;
          },
        ),
        builder: (context, state) {
          return ElevatedButton(
            style: elevatedButtonStyle(context),
            onPressed: () {
              context.read<AuthCubit>().requestForCode(_controller.text);
            },
            child: Text(
              'Получить код',
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        },
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.flutter_dash,
              size: 150,
            ),
            const SizedBox(height: 16),
            _usernameField(),
            const SizedBox(height: 16),
            _loginButton(),
          ],
        ),
      ),
    );
  }
}
