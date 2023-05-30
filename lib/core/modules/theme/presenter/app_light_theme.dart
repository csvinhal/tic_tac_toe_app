import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/modules/theme/domain/entities/app_text_theme.dart';
import 'package:tic_tac_toe_app/core/modules/theme/presenter/tic_tac_toe_light_theme.dart';

final appLightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: lightTicTacToeTheme.neutralColors.white,
  cardTheme: const CardTheme().copyWith(
    elevation: 0,
    color: lightTicTacToeTheme.neutralColors.lightGrey,
    margin: EdgeInsets.zero,
  ),
  colorScheme: const ColorScheme.light().copyWith(
    background: lightTicTacToeTheme.neutralColors.white,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
    backgroundColor: lightTicTacToeTheme.styleColors.blue,
    elevation: 0,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  textTheme: AppTextTheme.textTheme,
  extensions: <ThemeExtension<dynamic>>[
    lightTicTacToeTheme,
  ],
);
