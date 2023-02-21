import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePreferences {
  static const themeStatus = "DARK_THEME";

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(themeStatus) ?? false;
  }

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(themeStatus, value);
  }
}
