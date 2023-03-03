
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utilities/enums/enums.dart';

class MyCache {
  static SharedPreferences? preferences;
  static Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  static putString({required MyCacheKey key, required String value}) async {
    await preferences!.setString(key.name, value);
  }

  static getString({required MyCacheKey key, required String value}) async {
    await preferences!.getString(key.name) ?? "";
  }

  static putDouble({required MyCacheKey key, required double value}) async {
    await preferences!.setDouble(key.name, value);
  }

  static getDouble({key}) {
    return preferences!.getDouble(key.name) ?? 0;
  }

  static putBool({required MyCacheKey key, required bool value}) async {
    await preferences!.setBool(key.name, value);
  }

  static getBool({key}) {
    return preferences!.getBool(key.name) ?? false;
  }

  static putInt({required MyCacheKey key, required int value}) async {
    await preferences!.setInt(key.name, value);
  }

  static getInt({key}) {
    return preferences!.getInt(key.name) ?? 0;
  }

  static Future<void> removeFromShared({required MyCacheKey key}) async {
    await preferences!.remove(key.name);
  }

  static Future<void> clearShared() async {
    await preferences!.clear();
  }
}
