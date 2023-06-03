import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class TicTacToeTheme extends ThemeExtension<TicTacToeTheme> {
  const TicTacToeTheme({
    required this.neutralColors,
    required this.styleColors,
    required this.appButtonThemeData,
    required this.appTypographyThemeData,
  });

  final NeutralColors? neutralColors;
  final StyleColors? styleColors;
  final AppButtonThemeData? appButtonThemeData;
  final AppTypographyThemeData? appTypographyThemeData;

  @override
  ThemeExtension<TicTacToeTheme> copyWith({
    NeutralColors? neutralColors,
    StyleColors? styleColors,
    AppButtonThemeData? appButtonThemeData,
    AppTypographyThemeData? appTypographyThemeData,
  }) {
    return TicTacToeTheme(
      neutralColors: neutralColors ?? this.neutralColors,
      styleColors: styleColors ?? this.styleColors,
      appButtonThemeData: appButtonThemeData ?? this.appButtonThemeData,
      appTypographyThemeData:
          appTypographyThemeData ?? this.appTypographyThemeData,
    );
  }

  @override
  ThemeExtension<TicTacToeTheme> lerp(
    covariant ThemeExtension<TicTacToeTheme>? other,
    double t,
  ) {
    if (other is! TicTacToeTheme) {
      return this;
    }

    return TicTacToeTheme(
      neutralColors: NeutralColors.lerp(neutralColors, other.neutralColors, t),
      styleColors: StyleColors.lerp(styleColors, other.styleColors, t),
      appButtonThemeData: AppButtonThemeData.lerp(
        appButtonThemeData,
        other.appButtonThemeData,
        t,
      ),
      appTypographyThemeData: AppTypographyThemeData.lerp(
        appTypographyThemeData,
        other.appTypographyThemeData,
        t,
      ),
    );
  }
}
