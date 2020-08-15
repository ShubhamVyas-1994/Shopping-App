import 'package:shared_preferences/shared_preferences.dart';

void storeValueInSharedPreference(String name, dynamic data) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  _prefs.setString(name, data);
}
