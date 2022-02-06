import 'package:dio/dio.dart';
import 'package:login_with_code/core/data/repositories/model/user.dart';
import 'package:login_with_code/core/services/api/api.dart';
import 'package:login_with_code/core/services/network/endpoints.dart';

class DataProvider {
  final _apiService = ApiService();
  String? _email;

  Future<void> requestForCode(String email) async {
    _email = email;

    await _apiService.postData(
      Endpoints.code.buildUrl(),
      data: FormData.fromMap({
        'login': _email,
        'type': 'email',
      }),
    );
  }

  Future<User> approveEmailWithCode(String code) async {
    final Response response = await _apiService.postData(
      Endpoints.login.buildUrl(),
      data: FormData.fromMap({
        'login': _email,
        'code': code,
      }),
    );

    final User user = User.fromJson(response.data);

    return user;
  }

  Future<User> getUserWithToken(String token) async {
    final Response response = await _apiService.postData(
      Endpoints.login.buildUrl(),
      data: FormData.fromMap({
        'token': token,
      }),
    );

    final User user = User.fromJson(response.data);

    return user;
  }

  Future<User> updateUser(
    String token, {
    String? email,
    String? phone,
    String? name,
  }) async {
    final Response response = await _apiService.postData(
      Endpoints.userUpdate.buildUrl(),
      data: FormData.fromMap({
        'token': token,
        'email': email,
        'phone': phone,
        'name': name,
      }),
    );

    final User user = User.fromJson(response.data);

    return user;
  }
}
