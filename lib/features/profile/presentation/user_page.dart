import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_with_code/features/auth/logic/cubit/auth_cubit.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _usernameField() {
      return TextFormField(
        style: const TextStyle(color: Colors.black),
        // controller: controllerLogin,
        // key: _formKey,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.black),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.red),
            ),
            // icon: Icon(Icons.person),
            hintText: 'Username',
            hintStyle: const TextStyle(color: Colors.grey)),
        validator: (value) =>
            value!.length > 3 ? null : 'Username is too short',
        // onChanged: (value) => context
        //     .read<LoginBloc>()
        //     .add(LoginUsernameChanged(username: value)),
      );
    }

    Widget _loginButton() {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )),
        onPressed: () {},
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Привет',
                  style: Theme.of(context).textTheme.headline3,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    context.read<AuthCubit>().signOut();
                  },
                  child: const Text(
                    'Выйти',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _usernameField(),
            const SizedBox(height: 20),
            _usernameField(),
            const SizedBox(height: 20),
            _usernameField(),
            const SizedBox(height: 20),
            _loginButton(),
          ],
        ),
      ),
    );
  }
}
