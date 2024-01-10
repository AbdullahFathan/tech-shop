import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheServices {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<void> writeToCache(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  Future<String?> readFromCache(String key) async {
    return await _secureStorage.read(key: key);
  }

  Future<void> deleteFromCache(String key) async {
    await _secureStorage.delete(key: key);
  }
}
