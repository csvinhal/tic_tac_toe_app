import 'package:flutter/material.dart';
import 'app_text_theme.dart';

class AppTheme {
  static Color white = const Color(0xFFFFFFFF);

  static Color lighterGrey = const Color(0xFFF1F1F1);

  static Color lightGrey = const Color(0xFFE3E3E3);

  static Color grey = const Color(0xFFADADAD);

  static Color darkGrey = const Color(0xFF808080);

  static Color darkerGrey = const Color(0xFF575757);

  static Color darkestGrey = const Color(0xFF282828);

  static Color black = const Color(0xFF000000);

  static Color blue = const Color(0xFF46A3FF);

  static Color green = const Color(0xFF00C096);

  static Color red = const Color(0xFFFF827E);

  static Color yellow = const Color(0xFFFFB048);

  static Color darkBlue = const Color(0xFF225577);

  static Color darkGreen = const Color(0xFF00A682);

  static Color darkRed = const Color(0xFFE45651);

  static Color darkDarkBlue = const Color(0xFF212835);

  static Color darkDarkerBlue = const Color(0xFF12161F);

  static Color darkDark = const Color(0xFF0C1017);

  static final ThemeData lightTheme = ThemeData(
      backgroundColor: AppTheme.white,
      disabledColor: AppTheme.lighterGrey,
      primaryColor: AppTheme.blue,
      textTheme: AppTextTheme.textTheme
      // TODO
      );

  static final ThemeData darkTheme = ThemeData(
    backgroundColor: AppTheme.white,
    disabledColor: AppTheme.lighterGrey,
    primaryColor: AppTheme.blue,
  );
}
