import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_with_code/core/errors/auth_failure.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());

  void checkUser() {
    try {} catch (e) {}
    emit(const AuthState.unauthenticated());
  }

  void signIn() {}

  void signOut() {}
}
