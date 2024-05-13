import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  static const _secureStorage = FlutterSecureStorage();

  static Future<void> writeToCache(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  static Future<String?> readFromCache(String key) async {
    return await _secureStorage.read(key: key);
  }

  static Future<void> deleteFromCache(String key) async {
    await _secureStorage.delete(key: key);
  }
}
