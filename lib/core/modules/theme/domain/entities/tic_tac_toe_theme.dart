import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class TicTacToeTheme extends ThemeExtension<TicTacToeTheme>
    with Diagnosticable {
  const TicTacToeTheme({
    required this.neutralColors,
    required this.styleColors,
    required this.appButtonThemeData,
    required this.appTypographyThemeData,
    required this.loadingProgressBarThemeData,
  });

  final NeutralColors? neutralColors;
  final StyleColors? styleColors;
  final AppButtonThemeData? appButtonThemeData;
  final AppTypographyThemeData? appTypographyThemeData;
  final LoadingProgressBarThemeData? loadingProgressBarThemeData;

  @override
  ThemeExtension<TicTacToeTheme> copyWith({
    NeutralColors? neutralColors,
    StyleColors? styleColors,
    AppButtonThemeData? appButtonThemeData,
    AppTypographyThemeData? appTypographyThemeData,
    LoadingProgressBarThemeData? loadingProgressBarThemeData,
  }) {
    return TicTacToeTheme(
      neutralColors: neutralColors ?? this.neutralColors,
      styleColors: styleColors ?? this.styleColors,
      appButtonThemeData: appButtonThemeData ?? this.appButtonThemeData,
      appTypographyThemeData:
          appTypographyThemeData ?? this.appTypographyThemeData,
      loadingProgressBarThemeData:
          loadingProgressBarThemeData ?? this.loadingProgressBarThemeData,
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
      loadingProgressBarThemeData: LoadingProgressBarThemeData.lerp(
        loadingProgressBarThemeData,
        other.loadingProgressBarThemeData,
        t,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty<NeutralColors?>(
          'neutralColors',
          neutralColors,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<StyleColors?>(
          'styleColors',
          styleColors,
          defaultValue: null,
        ),
      )..add(
        DiagnosticsProperty<AppButtonThemeData?>(
          'appButtonThemeData',
          appButtonThemeData,
          defaultValue: null,
        ),
      )..add(
        DiagnosticsProperty<AppTypographyThemeData?>(
          'appTypographyThemeData',
          appTypographyThemeData,
          defaultValue: null,
        ),
      )..add(
        DiagnosticsProperty<LoadingProgressBarThemeData?>(
          'loadingProgressBarThemeData',
          loadingProgressBarThemeData,
          defaultValue: null,
        ),
      );
  }
}
