import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'credentials_storage.dart';

class SecureCredentialsStorage implements CredentialsStorage {
  final FlutterSecureStorage _storage;

  SecureCredentialsStorage(this._storage);

  static const _key = 'oauth2_credentials';

  String? _cachedCredentials;

  @override
  Future<void> clear() {
    _cachedCredentials = null;
    return _storage.delete(key: _key);
  }

  @override
  Future<String?> read() async {
    if (_cachedCredentials != null) {
      return _cachedCredentials;
    }
    final token = await _storage.read(key: _key);
    if (token == null) {
      return null;
    }
    try {
      return _cachedCredentials = token;
    } on FormatException {
      return null;
    }
  }

  @override
  Future<void> save(String credentials) {
    _cachedCredentials = credentials;
    return _storage.write(key: _key, value: credentials);
  }
}
