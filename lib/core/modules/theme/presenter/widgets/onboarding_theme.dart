import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:tic_tac_toe_app/core/core.dart';

@immutable
class OnboardingThemeData extends Equatable with Diagnosticable {
  const OnboardingThemeData({
    required this.activeIndicatorColor,
    required this.defaultIndicatorColor,
  });

  factory OnboardingThemeData.fallback() => const OnboardingThemeData(
        activeIndicatorColor: AppLightStaticColor.blue,
        defaultIndicatorColor: AppLightStaticColor.grey,
      );

  final Color? activeIndicatorColor;
  final Color? defaultIndicatorColor;

  static OnboardingThemeData? lerp(
    OnboardingThemeData? a,
    OnboardingThemeData? b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }
    return OnboardingThemeData(
      activeIndicatorColor:
          Color.lerp(a?.activeIndicatorColor, b?.activeIndicatorColor, t),
      defaultIndicatorColor:
          Color.lerp(a?.defaultIndicatorColor, b?.defaultIndicatorColor, t),
    );
  }

  @override
  List<Object?> get props => [activeIndicatorColor, defaultIndicatorColor];

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty<Color?>(
          'activeIndicatorColor',
          activeIndicatorColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'defaultIndicatorColor',
          defaultIndicatorColor,
          defaultValue: null,
        ),
      );
  }
}

class OnboardingTheme extends InheritedTheme {
  const OnboardingTheme({
    required this.data,
    required super.child,
    super.key,
  });

  final OnboardingThemeData data;

  static OnboardingThemeData? of(BuildContext context) {
    final onboardingTheme =
        context.dependOnInheritedWidgetOfExactType<OnboardingTheme>();
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();
    return onboardingTheme?.data ?? ticTacToeTheme?.onboardingThemeData;
  }

  @override
  bool updateShouldNotify(covariant OnboardingTheme oldWidget) =>
      data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return OnboardingTheme(data: data, child: child);
  }
}
