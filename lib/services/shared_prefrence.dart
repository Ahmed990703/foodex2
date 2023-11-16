import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;
  //initializing sharedprefrences instance
  static onInit() {
    final sharedPreferences = SharedPreferences.getInstance();
    if (getDataToSharedPrefrence('user') != null &&
        getDataToSharedPrefrence('user') != 'null') {}
  }

  //get dynamic data from the shared prefrences
  static dynamic getDataToSharedPrefrence(String key) {
    return sharedPreferences?.get(key);
  }

  // add dynamic data to the shared prefrences
  static Future<bool?> saveDataToSharedPrefrence(
      String key, dynamic value) async {
    if (value is String) return await sharedPreferences?.setString(key, value);
    if (value is int) return await sharedPreferences?.setInt(key, value);
    if (value is bool) return await sharedPreferences?.setBool(key, value);
    if (value is double) return await sharedPreferences?.setDouble(key, value);
    if (value == null)
      return await sharedPreferences?.setString(key, value.toString());
    value = jsonEncode(value);
    return await sharedPreferences!.setString(key, value);
  }
}
