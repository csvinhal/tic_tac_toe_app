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
  loadingProgressBarThemeData: LoadingProgressBarThemeData(
    backgroundColor: AppLightStaticColor.lightGrey,
    progressColor: AppLightStaticColor.blue,
  ),
  onboardingThemeData: OnboardingThemeData(
    activeIndicatorColor: AppDarkStaticColor.blue,
    defaultIndicatorColor: AppDarkStaticColor.lightGrey,
  ),
  scoreThemeData: ScoreThemeData(borderColor: AppDarkStaticColor.darkerGrey),
  inputFieldThemeData: InputFieldThemeData(
    focusedBorder: AppDarkStaticColor.darkerBlue,
    enabledBorder: AppDarkStaticColor.darkBlue,
  ),
  statusThemeData: StatusThemeData(
    onlineColor: AppDarkStaticColor.green,
    offlineColor: AppDarkStaticColor.red,
    playingColor: AppDarkStaticColor.darkGrey,
  ),
  smallButtonThemeData: SmallButtonThemeData(
    activeColor: AppDarkStaticColor.dark,
    inactiveColor: AppDarkStaticColor.darkerGrey,
    pendingColor: AppDarkStaticColor.blue,
    acceptedColor: AppDarkStaticColor.green,
    deniedColor: AppDarkStaticColor.red,
    activeBorderColor: AppDarkStaticColor.dark,
    inactiveBorderColor: AppDarkStaticColor.darkerGrey,
    pendingBorderColor: AppDarkStaticColor.blue,
    acceptedBorderColor: AppDarkStaticColor.green,
    deniedBorderColor: AppDarkStaticColor.red,
    activeTextColor: AppDarkStaticColor.lightGrey,
    inactiveTextColor: AppDarkStaticColor.darkestGrey,
    pendingTextColor: AppDarkStaticColor.lightGrey,
    acceptedTextColor: AppDarkStaticColor.lightGrey,
    deniedTextColor: AppDarkStaticColor.lightGrey,
  ),
);
