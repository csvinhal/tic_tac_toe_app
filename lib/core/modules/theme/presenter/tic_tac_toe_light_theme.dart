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
  onboardingThemeData: OnboardingThemeData(
    activeIndicatorColor: AppLightStaticColor.blue,
    defaultIndicatorColor: AppLightStaticColor.grey,
  ),
  scoreThemeData: ScoreThemeData(borderColor: AppLightStaticColor.lightGrey),
  inputFieldThemeData: InputFieldThemeData(
    focusedBorder: AppLightStaticColor.blue,
    enabledBorder: AppLightStaticColor.lightGrey,
  ),
  statusThemeData: StatusThemeData(
    onlineColor: AppLightStaticColor.green,
    offlineColor: AppLightStaticColor.red,
    playingColor: AppLightStaticColor.grey,
  ),
  smallButtonThemeData: SmallButtonThemeData(
    activeColor: AppLightStaticColor.white,
    inactiveColor: AppLightStaticColor.lightGrey,
    pendingColor: AppLightStaticColor.blue,
    acceptedColor: AppLightStaticColor.green,
    deniedColor: AppLightStaticColor.red,
    activeBorderColor: AppLightStaticColor.black,
    inactiveBorderColor: AppLightStaticColor.lightGrey,
    pendingBorderColor: AppLightStaticColor.blue,
    acceptedBorderColor: AppLightStaticColor.green,
    deniedBorderColor: AppLightStaticColor.red,
    activeTextColor: AppLightStaticColor.black,
    inactiveTextColor: AppLightStaticColor.grey,
    pendingTextColor: AppLightStaticColor.white,
    acceptedTextColor: AppLightStaticColor.white,
    deniedTextColor: AppLightStaticColor.white,
  ),
);
