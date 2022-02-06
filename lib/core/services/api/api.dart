import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';
import 'package:login_with_code/core/services/header/header.dart';

abstract class Api {
  Future<Response> getData(
    String uri, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });

  Future<Response> postData(
    String uri, {
    Map<String, dynamic> queryParameters,
    Map<String, dynamic>? headers,
    FormData? data,
  });
}

class ApiService extends Api {
  Dio dio = Dio();

  ApiService() {
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) => client..badCertificateCallback = (_, __, ___) => true;
  }

  @override
  Future<Response> getData(
    String uri, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      Response response = await dio.get(
        uri,
        queryParameters: queryParameters,
        options: Options(headers: headers ?? usernameAndPasswordHeader),
      );
      return response;
    } on DioError {
      rethrow;
    }
  }

  @override
  Future<Response> postData(
    String uri, {
    Map<String, dynamic>? queryParameters,
    FormData? data,
    Map<String, dynamic>? headers,
  }) async {
    try {
      Response response = await dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers ?? usernameAndPasswordHeader,
        ),
      );
      return response;
    } on DioError {
      rethrow;
    }
  }
}
