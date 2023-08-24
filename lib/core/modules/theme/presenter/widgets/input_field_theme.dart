import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:tic_tac_toe_app/core/core.dart';

@immutable
class InputFieldThemeData extends Equatable with Diagnosticable {
  const InputFieldThemeData({
    required this.focusedBorder,
    required this.enabledBorder,
  });

  factory InputFieldThemeData.fallback() => const InputFieldThemeData(
        focusedBorder: AppLightStaticColor.lightGrey,
        enabledBorder: AppLightStaticColor.blue,
      );

  final Color? focusedBorder;
  final Color? enabledBorder;

  static InputFieldThemeData? lerp(
    InputFieldThemeData? a,
    InputFieldThemeData? b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }
    return InputFieldThemeData(
      focusedBorder: Color.lerp(a?.focusedBorder, b?.focusedBorder, t),
      enabledBorder: Color.lerp(a?.enabledBorder, b?.enabledBorder, t),
    );
  }

  @override
  List<Object?> get props => [focusedBorder, enabledBorder];

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty<Color?>(
          'focusedBorder',
          focusedBorder,
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<Color?>(
          'enabledBorder',
          enabledBorder,
          defaultValue: null,
        ),
      );
  }
}

class InputFieldTheme extends InheritedTheme {
  const InputFieldTheme({
    required this.data,
    required super.child,
    super.key,
  });

  final InputFieldThemeData data;

  static InputFieldThemeData? of(BuildContext context) {
    final inputFieldTheme =
        context.dependOnInheritedWidgetOfExactType<InputFieldTheme>();
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();
    return inputFieldTheme?.data ?? ticTacToeTheme?.inputFieldThemeData;
  }

  @override
  bool updateShouldNotify(covariant InputFieldTheme oldWidget) =>
      data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return InputFieldTheme(data: data, child: child);
  }
}
