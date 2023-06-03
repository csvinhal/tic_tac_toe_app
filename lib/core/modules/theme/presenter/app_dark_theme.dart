import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/core.dart';

final appDarkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: AppDarkStaticColor.dark,
  cardTheme: const CardTheme().copyWith(
    elevation: 0,
    color: AppDarkStaticColor.darkBlue,
    margin: EdgeInsets.zero,
  ),
  colorScheme: const ColorScheme.dark().copyWith(
    background: AppDarkStaticColor.dark,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
    backgroundColor: AppDarkStaticColor.darkBlue,
    elevation: 0,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  textTheme: AppTextTheme.textTheme,
  extensions: <ThemeExtension<dynamic>>[darkTicTacToeTheme],
);
