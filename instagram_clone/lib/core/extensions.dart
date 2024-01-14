import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'env.dart';

extension FlutterSecureStorageX on FlutterSecureStorage {
  Future<String?> getToken() async {
    return Modular.get<EnvironmentConfig>().env.isDev
        ? await read(key: 'token-dev')
        : await read(key: 'token');
  }

  Future<void> setToken(String token) async {
    return Modular.get<EnvironmentConfig>().env.isDev
        ? await write(key: 'token-dev', value: token)
        : await write(key: 'token', value: token);
  }
}
