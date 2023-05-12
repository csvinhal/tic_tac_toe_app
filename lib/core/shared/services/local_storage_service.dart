import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorageService {
  Future<bool> delete(String key);
  Future<Object?> get(String key);
  Future<bool> put(String key, Object value);
}

class LocalStorageServiceImpl implements LocalStorageService {
  @override
  Future<bool> delete(String key) async {
    final shared = await SharedPreferences.getInstance();
    return shared.remove(key);
  }

  @override
  Future<Object?> get(String key) async {
    final shared = await SharedPreferences.getInstance();
    return shared.get(key);
  }

  @override
  Future<bool> put(String key, Object value) async {
    final shared = await SharedPreferences.getInstance();
    if (value is bool) {
      return shared.setBool(key, value);
    } else if (value is String) {
      return shared.setString(key, value);
    } else if (value is int) {
      return shared.setInt(key, value);
    } else if (value is double) {
      return shared.setDouble(key, value);
    }

    throw Exception(
      'Invalid type value. Value must be a bool, String, int or double',
    );
  }
}
