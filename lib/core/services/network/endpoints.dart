import 'package:login_with_code/core/services/network/config.dart';

enum Endpoints {
  code,
  login,
  userUpdate,
}

extension EndpointsExtension on Endpoints {
  String get scheme {
    return Config.baseScheme.value;
  }

  String get hostName {
    return Config.baseUrl.value;
  }

  String getPath(List<String>? params) {
    switch (this) {
      case Endpoints.code:
        return "${Config.baseAPIpath.value}/app/code";
      case Endpoints.login:
        return "${Config.baseAPIpath.value}/app/login";
      case Endpoints.userUpdate:
        return "${Config.baseAPIpath.value}/user/update";
    }
  }

  String buildUrl({
    Map<String, dynamic>? queryParameters,
    List<String>? urlParams,
  }) {
    return Uri.http(hostName, getPath(urlParams), queryParameters).toString();
  }
}
