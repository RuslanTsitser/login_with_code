import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_with_code/core/credentials_storage/secure_credentials_storage.dart';
import 'package:login_with_code/core/data/datasources/data_provider.dart';
import 'package:login_with_code/core/data/repositories/user_repository.dart';
import 'package:login_with_code/core/errors/auth_failure.dart';

part 'update_user_state.dart';
part 'update_user_cubit.freezed.dart';

class UpdateUserCubit extends Cubit<UpdateUserState> {
  final _dataProvider = DataProvider();
  final SecureCredentialsStorage _secureCredentialsStorage;

  UpdateUserCubit(
      UserRepository _userRepository, this._secureCredentialsStorage)
      : super(const UpdatedUser().copyWith(
          name: _userRepository.user!.name,
          email: _userRepository.user!.email,
          phone: _userRepository.user!.phone,
        ));

  void updateUser({String? name, String? phone, String? email}) async {
    final token = await _secureCredentialsStorage.read();
    if (token != null) {
      try {
        final updatedUser = await _dataProvider.updateUser(
          token,
          email: email,
          name: name,
          phone: phone,
        );
        emit(const UpdatedUser().copyWith(
          name: updatedUser.name,
          email: updatedUser.email,
          phone: updatedUser.phone,
        ));
      } on DioError catch (e) {
        if (e.response != null) {
          String message = e.response!.data['error']['message'];
          emit(UpdateUserState.failure(AuthFailure.server(message)));
        } else {
          emit(const UpdateUserState.failure(
              AuthFailure.server('Проблемы с сетью')));
        }
      }
    }
  }
}
