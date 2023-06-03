import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/core.dart';

final appLightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: AppLightStaticColor.white,
  cardTheme: const CardTheme().copyWith(
    elevation: 0,
    color: AppLightStaticColor.lightGrey,
    margin: EdgeInsets.zero,
  ),
  colorScheme: const ColorScheme.light().copyWith(
    background: AppLightStaticColor.white,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
    backgroundColor: AppLightStaticColor.blue,
    elevation: 0,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  textTheme: AppTextTheme.textTheme,
  extensions: <ThemeExtension<dynamic>>[lightTicTacToeTheme],
);
