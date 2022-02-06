import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_with_code/constants/elevated_button_style.dart';
import 'package:login_with_code/constants/text_field_decoration.dart';

import '../../auth/logic/cubit/auth_cubit.dart';
import '../logic/cubit/update_user_cubit.dart';

class UserPage extends StatelessWidget {
  UserPage({Key? key}) : super(key: key);

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget _loginButton() {
      return BlocListener<UpdateUserCubit, UpdateUserState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              failure: (failure) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(failure.failure.map(
                        server: (message) => message.message!,
                        storage: (_) => ''))));
              },
              updatedUser: (_) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Данные успешно изменены')));
              });
        },
        child: ElevatedButton(
          style: elevatedButtonStyle(context),
          onPressed: () {
            context.read<UpdateUserCubit>().updateUser(
                  name:
                      _nameController.text != '' ? _nameController.text : null,
                  phone: _phoneController.text != ''
                      ? _phoneController.text
                      : null,
                  email: _emailController.text,
                );
          },
          child: Text(
            'Сохранить',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SafeArea(
          child: BlocBuilder<UpdateUserCubit, UpdateUserState>(
            buildWhen: (previous, current) => current is UpdatedUser,
            builder: (context, state) {
              return ListView(
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
                  Text(
                    'Имя ' +
                        state.maybeMap(
                            orElse: () => '',
                            updatedUser: (value) => value.name ?? ''),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    style: const TextStyle(color: Colors.black),
                    controller: _nameController,
                    decoration: textFieldDecoration(
                        'Введите новое имя', _nameController),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Email ' +
                        state.maybeMap(
                            orElse: () => '',
                            updatedUser: (value) => value.email ?? ''),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.black),
                    controller: _emailController,
                    decoration: textFieldDecoration(
                        'Введите новый email', _emailController),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Тел. ' +
                        state.maybeMap(
                            orElse: () => '',
                            updatedUser: (value) => value.phone ?? ''),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(color: Colors.black),
                    controller: _phoneController,
                    decoration: textFieldDecoration(
                        'Введите новый номер телефона', _phoneController),
                  ),
                  const SizedBox(height: 30),
                  _loginButton(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
