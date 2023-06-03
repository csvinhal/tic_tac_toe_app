import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/modules/theme/domain/entities/app_text_theme.dart';
import 'package:tic_tac_toe_app/core/modules/theme/presenter/tic_tac_toe_dark_theme.dart';

final appDarkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: darkTicTacToeTheme.styleColors?.dark,
  cardTheme: const CardTheme().copyWith(
    elevation: 0,
    color: darkTicTacToeTheme.styleColors?.darkBlue,
    margin: EdgeInsets.zero,
  ),
  colorScheme: const ColorScheme.dark().copyWith(
    background: darkTicTacToeTheme.styleColors?.dark,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
    backgroundColor: darkTicTacToeTheme.styleColors?.darkBlue,
    elevation: 0,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  textTheme: AppTextTheme.textTheme,
  extensions: <ThemeExtension<dynamic>>[
    darkTicTacToeTheme,
  ],
);
