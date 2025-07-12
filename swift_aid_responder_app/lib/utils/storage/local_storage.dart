import 'package:get_storage/get_storage.dart';

class SLocalStorage {
  static final SLocalStorage _instance = SLocalStorage._internal();

  factory SLocalStorage() {
    return _instance;
  }

  SLocalStorage._internal();

  final _storage = GetStorage();

  // generic write
  Future<void> save<T>(String key, T data) async {
    await _storage.write(key, data);
  }

  // generic read
  Future get<T>(String key) async {
    return await _storage.read(key);
  }

  // remove all data
  Future<void> clearAll() async {
    await _storage.erase();
  }

  // remove specific data
  Future<void> remove(String key) async {
    await _storage.remove(key);
  }
}
