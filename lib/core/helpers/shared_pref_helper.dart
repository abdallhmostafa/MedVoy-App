import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePrefHelper {
  SharePrefHelper._();

  static removeData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  static clearAllData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  static setData(String key, dynamic value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    switch (value.runtimeType) {
      case int:
        prefs.setInt(key, value);
        break;
      case double:
        prefs.setDouble(key, value);
        break;
      case String:
        prefs.setString(key, value);
        break;
      case bool:
        prefs.setBool(key, value);
        break;
      case List:
        prefs.setStringList(key, value);
        break;
      default:
        return null;
    }
  }

  static Future<bool> getBoolData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false;
  }

  static Future<double> getDouble(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key) ?? 0.0;
  }

  static Future<int> getInt(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? 0;
  }

  static Future<String> getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? "";
  }

  static Future<List<String>> getStringList(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key) ?? [];
  }

  /// This method is used to set secured string in shared preference by [key] and [value]
  static Future<void> setSecuredString(String key, String value) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint(
        'SharedPrefHelper: setSecured String with key: $key, and Value $value');
    await flutterSecureStorage.write(key: key, value: value);
  }

  /// Get secured string from shared preference by [key]
  static Future<String?> getSecuredString(String key) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint('SharedPrefHelper: getSecured String with key: $key');
    return await flutterSecureStorage.read(key: key);
  }

  /// Clear all Secured Date
   
   static Future<void> deleteAllSecuredData()async{
     const flutterSecureStorage = FlutterSecureStorage();
     await flutterSecureStorage.deleteAll();
   }
}
