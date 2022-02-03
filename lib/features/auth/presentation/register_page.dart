import 'package:flutter/material.dart';
import 'package:login_with_code/constants/elevated_button_style.dart';
import 'package:login_with_code/constants/text_field_decoration.dart';
import 'package:login_with_code/core/routes/app_routes.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _usernameField() {
      return TextFormField(
        style: const TextStyle(color: Colors.black),
        // controller: ,
        // key: ,
        decoration: textFieldDecoration('hintText'),
        validator: (value) => value!.length > 3 ? null : 'mail is too short',
      );
    }

    Widget _loginButton() {
      return ElevatedButton(
        style: elevatedButtonStyle(context),
        onPressed: () {
          Navigator.pushNamed(context, AppRoute.confirmCode.value);
        },
        child: Text(
          'Сохранить',
          style: Theme.of(context).textTheme.headline5,
        ),
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
