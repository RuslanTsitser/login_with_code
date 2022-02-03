import 'package:dio/dio.dart';

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
        options: Options(headers: headers ?? {}),
      );
      return response;
    } catch (e) {
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
            headers: headers ?? {},
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }),
      );
      return response;
    } on DioError catch (e) {
      rethrow;
    }
  }
}
