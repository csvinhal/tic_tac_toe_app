import 'package:flutter/foundation.dart';

import '../utils/dark_theme_preferences.dart';

class DarkThemeProvider with ChangeNotifier, DiagnosticableTreeMixin {
  DarkThemePreferences preferences = DarkThemePreferences();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    preferences.setDarkTheme(_darkTheme);
    notifyListeners();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(FlagProperty('darkTheme', value: darkTheme));
  }
}
