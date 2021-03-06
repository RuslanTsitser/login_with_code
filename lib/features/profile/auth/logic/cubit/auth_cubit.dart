import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_with_code/core/credentials_storage/secure_credentials_storage.dart';
import 'package:login_with_code/core/data/datasources/data_provider.dart';
import 'package:login_with_code/core/data/repositories/user_repository.dart';
import 'package:login_with_code/core/errors/auth_failure.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final DataProvider _dataProvider = DataProvider();
  final UserRepository _userRepository;
  final SecureCredentialsStorage _secureCredentialsStorage;
  AuthCubit(this._userRepository, this._secureCredentialsStorage)
      : super(const AuthState.initial());

  void checkUser() async {
    try {
      final token = await _secureCredentialsStorage.read();
      if (token != null) {
        signInWithToken(token);
        emit(const AuthState.authenticated());
      }
      emit(const AuthState.unauthenticated());
    } on PlatformException {
      emit(const Failure().copyWith(failure: const AuthFailure.storage()));
    }
  }

  void requestForCode(String email) async {
    emit(const AuthState.loading());
    try {
      await _dataProvider.requestForCode(email);
      emit(const Unauthenticated());
    } on DioError catch (e) {
      if (e.response != null) {
        String message = e.response!.data['error']['message'];
        emit(const Failure().copyWith(failure: AuthFailure.server(message)));
      } else {
        String message = 'Ошибка сети';
        emit(const Failure().copyWith(failure: AuthFailure.server(message)));
      }
    }
  }

  void signInWithCode(String code) async {
    try {
      final user = await _dataProvider.approveEmailWithCode(code);
      await _secureCredentialsStorage.save(user.token!);

      _userRepository.setUser(user);
      emit(const AuthState.authenticated());
    } on DioError catch (e) {
      if (e.response != null) {
        String message = e.response!.data['error']['message'];
        emit(const Failure().copyWith(failure: AuthFailure.server(message)));
      } else {
        emit(const Failure().copyWith(failure: AuthFailure.server(e.message)));
      }
    } on PlatformException {
      emit(const Failure().copyWith(failure: const AuthFailure.storage()));
    }
  }

  void signInWithToken(String token) async {
    try {
      final user = await _dataProvider.getUserWithToken(token);

      _userRepository.setUser(user);
      emit(const AuthState.authenticated());
    } on DioError catch (e) {
      if (e.response != null) {
        String message = e.response!.data['error']['message'];
        emit(const Failure().copyWith(failure: AuthFailure.server(message)));
      } else {
        emit(const Failure().copyWith(failure: AuthFailure.server(e.message)));
      }
    } on PlatformException {
      emit(const Failure().copyWith(failure: const AuthFailure.storage()));
    }
  }

  void signOut() async {
    _userRepository.deleteUser();
    await _secureCredentialsStorage.clear();
    emit(const AuthState.unauthenticated());
  }
}
