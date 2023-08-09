import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:tic_tac_toe_app/core/core.dart';

@immutable
class ScoreThemeData extends Equatable with Diagnosticable {
  const ScoreThemeData({
    required this.borderColor,
  });

  factory ScoreThemeData.fallback() => const ScoreThemeData(
        borderColor: AppLightStaticColor.lightGrey,
      );

  final Color? borderColor;

  static ScoreThemeData? lerp(
    ScoreThemeData? a,
    ScoreThemeData? b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }
    return ScoreThemeData(
      borderColor: Color.lerp(a?.borderColor, b?.borderColor, t),
    );
  }

  @override
  List<Object?> get props => [borderColor];

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<Color?>(
        'borderColor',
        borderColor,
        defaultValue: null,
      ),
    );
  }
}

class ScoreTheme extends InheritedTheme {
  const ScoreTheme({
    required this.data,
    required super.child,
    super.key,
  });

  final ScoreThemeData data;

  static ScoreThemeData? of(BuildContext context) {
    final scoreTheme =
        context.dependOnInheritedWidgetOfExactType<ScoreTheme>();
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();
    return scoreTheme?.data ?? ticTacToeTheme?.scoreThemeData;
  }

  @override
  bool updateShouldNotify(covariant ScoreTheme oldWidget) =>
      data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return ScoreTheme(data: data, child: child);
  }
}
