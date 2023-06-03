import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/core.dart';

TicTacToeTheme darkTicTacToeTheme = const TicTacToeTheme(
  neutralColors: NeutralColors(
    white: AppDarkStaticColor.white,
    lighterGrey: AppDarkStaticColor.lighterGrey,
    lightGrey: AppDarkStaticColor.lightGrey,
    grey: AppDarkStaticColor.grey,
    darkGrey: AppDarkStaticColor.darkGrey,
    darkerGrey: AppDarkStaticColor.darkerGrey,
    darkestGrey: AppDarkStaticColor.darkestGrey,
    black: AppDarkStaticColor.black,
  ),
  styleColors: StyleColors(
    blue: AppDarkStaticColor.blue,
    green: AppDarkStaticColor.green,
    red: AppDarkStaticColor.red,
    darkBlue: AppDarkStaticColor.darkBlue,
    darkerBlue: AppDarkStaticColor.darkerBlue,
    dark: AppDarkStaticColor.dark,
  ),
  appButtonThemeData: AppButtonThemeData(
    disabledButtonColor: AppDarkStaticColor.darkerGrey,
    disabledTextColor: AppDarkStaticColor.darkestGrey,
    normalColor: Colors.transparent,
    accentColor: AppDarkStaticColor.red,
    primaryColor: AppDarkStaticColor.blue,
    normalBorderColor: AppDarkStaticColor.darkBlue,
    normalTextColor: AppLightStaticColor.lightGrey,
    defaultTextColor: AppLightStaticColor.lightGrey,
  ),
  appTypographyThemeData: AppTypographyThemeData(
    primaryColor: AppLightStaticColor.lightGrey,
    secondaryColor: AppLightStaticColor.darkGrey,
  ),
);
