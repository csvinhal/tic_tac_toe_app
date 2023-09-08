import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:tic_tac_toe_app/core/core.dart';

enum SmallButtonStateType {
  active,
  inactive,
  pending,
  accepted,
  denied,
}

@immutable
class SmallButtonThemeData extends Equatable with Diagnosticable {
  const SmallButtonThemeData({
    required this.activeColor,
    required this.inactiveColor,
    required this.pendingColor,
    required this.acceptedColor,
    required this.deniedColor,
    required this.activeBorderColor,
    required this.inactiveBorderColor,
    required this.pendingBorderColor,
    required this.acceptedBorderColor,
    required this.deniedBorderColor,
    required this.activeTextColor,
    required this.inactiveTextColor,
    required this.pendingTextColor,
    required this.acceptedTextColor,
    required this.deniedTextColor,
  });

  factory SmallButtonThemeData.fallback() => const SmallButtonThemeData(
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
        inactiveTextColor: AppLightStaticColor.lightGrey,
        pendingTextColor: AppLightStaticColor.white,
        acceptedTextColor: AppLightStaticColor.white,
        deniedTextColor: AppLightStaticColor.white,
      );

  final Color? activeColor;
  final Color? inactiveColor;
  final Color? pendingColor;
  final Color? acceptedColor;
  final Color? deniedColor;
  final Color? activeBorderColor;
  final Color? inactiveBorderColor;
  final Color? pendingBorderColor;
  final Color? acceptedBorderColor;
  final Color? deniedBorderColor;
  final Color? activeTextColor;
  final Color? inactiveTextColor;
  final Color? pendingTextColor;
  final Color? acceptedTextColor;
  final Color? deniedTextColor;

  static SmallButtonThemeData? lerp(
    SmallButtonThemeData? a,
    SmallButtonThemeData? b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }
    return SmallButtonThemeData(
      activeColor: Color.lerp(a?.activeColor, b?.activeColor, t),
      inactiveColor: Color.lerp(a?.inactiveColor, b?.inactiveColor, t),
      pendingColor: Color.lerp(a?.pendingColor, b?.pendingColor, t),
      acceptedColor: Color.lerp(a?.acceptedColor, b?.acceptedColor, t),
      deniedColor: Color.lerp(a?.deniedColor, b?.deniedColor, t),
      activeBorderColor: Color.lerp(a?.activeColor, b?.activeColor, t),
      inactiveBorderColor: Color.lerp(a?.inactiveColor, b?.inactiveColor, t),
      pendingBorderColor: Color.lerp(a?.pendingColor, b?.pendingColor, t),
      acceptedBorderColor: Color.lerp(a?.acceptedColor, b?.acceptedColor, t),
      deniedBorderColor: Color.lerp(a?.deniedColor, b?.deniedColor, t),
      activeTextColor: Color.lerp(a?.activeColor, b?.activeColor, t),
      inactiveTextColor: Color.lerp(a?.inactiveColor, b?.inactiveColor, t),
      pendingTextColor: Color.lerp(a?.pendingColor, b?.pendingColor, t),
      acceptedTextColor: Color.lerp(a?.acceptedColor, b?.acceptedColor, t),
      deniedTextColor: Color.lerp(a?.deniedColor, b?.deniedColor, t),
    );
  }

  @override
  List<Object?> get props => [
        activeColor,
        inactiveColor,
        pendingColor,
        acceptedColor,
        deniedColor,
        activeBorderColor,
        inactiveBorderColor,
        pendingBorderColor,
        acceptedBorderColor,
        deniedBorderColor,
        activeTextColor,
        inactiveTextColor,
        pendingTextColor,
        acceptedTextColor,
        deniedTextColor,
      ];

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty<Color?>(
          'activeColor',
          activeColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'inactiveColor',
          inactiveColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'pendingColor',
          pendingColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'acceptedColor',
          acceptedColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'deniedColor',
          deniedColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'activeBorderColor',
          activeBorderColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'inactiveColor',
          inactiveColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'pendingBorderColor',
          pendingBorderColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'acceptedBorderColor',
          acceptedBorderColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'deniedBorderColor',
          deniedBorderColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'activeTextColor',
          activeTextColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'inactiveTextColor',
          inactiveTextColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'pendingTextColor',
          pendingTextColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'acceptedTextColor',
          acceptedTextColor,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'deniedTextColor',
          deniedTextColor,
          defaultValue: null,
        ),
      );
  }
}

class SmallButtonTheme extends InheritedTheme {
  const SmallButtonTheme({
    required this.data,
    required super.child,
    super.key,
  });

  final SmallButtonThemeData data;

  static SmallButtonThemeData? of(BuildContext context) {
    final buttonTheme =
        context.dependOnInheritedWidgetOfExactType<SmallButtonTheme>();
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();
    return buttonTheme?.data ?? ticTacToeTheme?.smallButtonThemeData;
  }

  @override
  bool updateShouldNotify(covariant SmallButtonTheme oldWidget) =>
      data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return SmallButtonTheme(data: data, child: child);
  }
}
