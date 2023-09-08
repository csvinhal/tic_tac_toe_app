import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:tic_tac_toe_app/core/core.dart';

enum AppButtonType {
  normal,
  accent,
  primary,
}

@immutable
class AppButtonThemeData extends Equatable with Diagnosticable {
  const AppButtonThemeData({
    required this.disabledButtonColor,
    required this.disabledTextColor,
    required this.primaryColor,
    required this.accentColor,
    required this.normalColor,
    required this.normalBorderColor,
    required this.normalTextColor,
    required this.defaultTextColor,
  });

  factory AppButtonThemeData.fallback() => const AppButtonThemeData(
        disabledButtonColor: AppLightStaticColor.lightGrey,
        disabledTextColor: AppLightStaticColor.grey,
        normalColor: AppLightStaticColor.white,
        accentColor: AppLightStaticColor.red,
        primaryColor: AppLightStaticColor.blue,
        normalBorderColor: AppLightStaticColor.lightGrey,
        normalTextColor: AppLightStaticColor.black,
        defaultTextColor: AppLightStaticColor.white,
      );

  final Color? disabledButtonColor;
  final Color? disabledTextColor;
  final Color? primaryColor;
  final Color? accentColor;
  final Color? normalColor;
  final Color? normalBorderColor;
  final Color? normalTextColor;
  final Color? defaultTextColor;

  static AppButtonThemeData? lerp(
    AppButtonThemeData? a,
    AppButtonThemeData? b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }
    return AppButtonThemeData(
      disabledButtonColor:
          Color.lerp(a?.disabledButtonColor, b?.disabledButtonColor, t),
      disabledTextColor:
          Color.lerp(a?.disabledTextColor, b?.disabledTextColor, t),
      primaryColor: Color.lerp(a?.primaryColor, b?.primaryColor, t),
      accentColor: Color.lerp(a?.accentColor, b?.accentColor, t),
      normalColor: Color.lerp(a?.normalColor, b?.normalColor, t),
      normalBorderColor:
          Color.lerp(a?.normalBorderColor, b?.normalBorderColor, t),
      normalTextColor: Color.lerp(a?.normalTextColor, b?.normalTextColor, t),
      defaultTextColor: Color.lerp(a?.defaultTextColor, b?.defaultTextColor, t),
    );
  }

  @override
  List<Object?> get props => [
        disabledButtonColor,
        disabledTextColor,
        primaryColor,
        accentColor,
        normalColor,
        normalBorderColor,
        normalTextColor,
        defaultTextColor,
      ];

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty<Color?>(
          'disabledButtonColor',
          disabledButtonColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'disabledTextColor',
          disabledTextColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'primaryColor',
          primaryColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'accentColor',
          accentColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'normalColor',
          normalColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'normalBorderColor',
          normalBorderColor,
          defaultValue: null,
        ),
      );
  }
}

class AppButtonTheme extends InheritedTheme {
  const AppButtonTheme({
    required this.data,
    required super.child,
    super.key,
  });

  final AppButtonThemeData data;

  static AppButtonThemeData? of(BuildContext context) {
    final buttonTheme =
        context.dependOnInheritedWidgetOfExactType<AppButtonTheme>();
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();
    return buttonTheme?.data ?? ticTacToeTheme?.appButtonThemeData;
  }

  @override
  bool updateShouldNotify(covariant AppButtonTheme oldWidget) =>
      data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return AppButtonTheme(data: data, child: child);
  }
}
