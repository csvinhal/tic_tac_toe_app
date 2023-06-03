import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/core.dart';

TicTacToeTheme lightTicTacToeTheme = const TicTacToeTheme(
  neutralColors: NeutralColors(
    white: AppLightStaticColor.white,
    lighterGrey: AppLightStaticColor.lighterGrey,
    lightGrey: AppLightStaticColor.lightGrey,
    grey: AppLightStaticColor.grey,
    darkGrey: AppLightStaticColor.darkGrey,
    darkerGrey: AppLightStaticColor.darkerGrey,
    darkestGrey: AppLightStaticColor.darkestGrey,
    black: AppLightStaticColor.black,
  ),
  styleColors: StyleColors(
    blue: AppLightStaticColor.blue,
    green: AppLightStaticColor.green,
    red: AppLightStaticColor.red,
    yellow: AppLightStaticColor.yellow,
  ),
  appButtonThemeData: AppButtonThemeData(
    disabledButtonColor: AppLightStaticColor.lightGrey,
    disabledTextColor: AppLightStaticColor.grey,
    normalColor: Colors.transparent,
    accentColor: AppLightStaticColor.red,
    primaryColor: AppLightStaticColor.blue,
    normalBorderColor: AppLightStaticColor.lightGrey,
    normalTextColor: AppLightStaticColor.black,
    defaultTextColor: AppLightStaticColor.white,
  ),
  appTypographyThemeData: AppTypographyThemeData(
    primaryColor: AppLightStaticColor.black,
    secondaryColor: AppLightStaticColor.grey,
  ),
  loadingProgressBarThemeData: LoadingProgressBarThemeData(
    backgroundColor: AppLightStaticColor.lightGrey,
    progressColor: AppLightStaticColor.blue,
  ),
);
