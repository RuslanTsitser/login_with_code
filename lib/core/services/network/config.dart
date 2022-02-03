enum Config { baseUrl, baseScheme, baseAPIpath }

extension ConfigExtension on Config {
  String get value {
    switch (this) {
      case Config.baseUrl:
        return "new2.mobil2b.com";
      case Config.baseAPIpath:
        return 'api';
      default:
        return 'https';
    }
  }

  static String buldURLHead() {
    return Config.baseScheme.value + "://" + Config.baseUrl.value + "/";
  }
}
