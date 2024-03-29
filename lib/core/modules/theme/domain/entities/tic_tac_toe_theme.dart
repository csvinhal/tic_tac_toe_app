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
    required this.onboardingThemeData,
    required this.scoreThemeData,
    required this.inputFieldThemeData,
    required this.statusThemeData,
    required this.smallButtonThemeData,
  });

  final NeutralColors? neutralColors;
  final StyleColors? styleColors;
  final AppButtonThemeData? appButtonThemeData;
  final AppTypographyThemeData? appTypographyThemeData;
  final LoadingProgressBarThemeData? loadingProgressBarThemeData;
  final OnboardingThemeData? onboardingThemeData;
  final ScoreThemeData? scoreThemeData;
  final InputFieldThemeData? inputFieldThemeData;
  final StatusThemeData? statusThemeData;
  final SmallButtonThemeData? smallButtonThemeData;

  @override
  ThemeExtension<TicTacToeTheme> copyWith({
    NeutralColors? neutralColors,
    StyleColors? styleColors,
    AppButtonThemeData? appButtonThemeData,
    AppTypographyThemeData? appTypographyThemeData,
    LoadingProgressBarThemeData? loadingProgressBarThemeData,
    OnboardingThemeData? onboardingThemeData,
    ScoreThemeData? scoreThemeData,
    InputFieldThemeData? inputFieldThemeData,
    StatusThemeData? statusThemeData,
    SmallButtonThemeData? smallButtonThemeData,
  }) {
    return TicTacToeTheme(
      neutralColors: neutralColors ?? this.neutralColors,
      styleColors: styleColors ?? this.styleColors,
      appButtonThemeData: appButtonThemeData ?? this.appButtonThemeData,
      appTypographyThemeData:
          appTypographyThemeData ?? this.appTypographyThemeData,
      loadingProgressBarThemeData:
          loadingProgressBarThemeData ?? this.loadingProgressBarThemeData,
      onboardingThemeData: onboardingThemeData ?? this.onboardingThemeData,
      scoreThemeData: scoreThemeData ?? this.scoreThemeData,
      inputFieldThemeData: inputFieldThemeData ?? this.inputFieldThemeData,
      statusThemeData: statusThemeData ?? this.statusThemeData,
      smallButtonThemeData: smallButtonThemeData ?? this.smallButtonThemeData,
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
      onboardingThemeData: OnboardingThemeData.lerp(
        onboardingThemeData,
        other.onboardingThemeData,
        t,
      ),
      scoreThemeData: ScoreThemeData.lerp(
        scoreThemeData,
        other.scoreThemeData,
        t,
      ),
      inputFieldThemeData: InputFieldThemeData.lerp(
        inputFieldThemeData,
        other.inputFieldThemeData,
        t,
      ),
      statusThemeData: StatusThemeData.lerp(
        statusThemeData,
        other.statusThemeData,
        t,
      ),
      smallButtonThemeData: SmallButtonThemeData.lerp(
        smallButtonThemeData,
        other.smallButtonThemeData,
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
      )
      ..add(
        DiagnosticsProperty<AppButtonThemeData?>(
          'appButtonThemeData',
          appButtonThemeData,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<AppTypographyThemeData?>(
          'appTypographyThemeData',
          appTypographyThemeData,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<LoadingProgressBarThemeData?>(
          'loadingProgressBarThemeData',
          loadingProgressBarThemeData,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<OnboardingThemeData?>(
          'onboardingThemeData',
          onboardingThemeData,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<ScoreThemeData?>(
          'scoreThemeData',
          scoreThemeData,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<StatusThemeData?>(
          'statusThemeData',
          statusThemeData,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<SmallButtonThemeData?>(
          'smallButtonThemeData',
          smallButtonThemeData,
          defaultValue: null,
        ),
      );
  }
}
