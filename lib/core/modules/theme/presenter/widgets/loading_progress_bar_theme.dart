import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:tic_tac_toe_app/core/core.dart';

@immutable
class LoadingProgressBarThemeData extends Equatable with Diagnosticable {
  const LoadingProgressBarThemeData({
    required this.backgroundColor,
    required this.progressColor,
  });

  factory LoadingProgressBarThemeData.fallback() =>
      const LoadingProgressBarThemeData(
        backgroundColor: AppLightStaticColor.lightGrey,
        progressColor: AppLightStaticColor.black,
      );

  final Color? backgroundColor;
  final Color? progressColor;

  static LoadingProgressBarThemeData? lerp(
    LoadingProgressBarThemeData? a,
    LoadingProgressBarThemeData? b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }
    return LoadingProgressBarThemeData(
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      progressColor: Color.lerp(a?.progressColor, b?.progressColor, t),
    );
  }

  @override
  List<Object?> get props => [backgroundColor, progressColor];
}

class LoadingProgressBarTheme extends InheritedTheme {
  const LoadingProgressBarTheme({
    required this.data,
    required super.child,
    super.key,
  });

  final LoadingProgressBarThemeData data;

  static LoadingProgressBarThemeData? of(BuildContext context) {
    final loadingProgressBarTheme =
        context.dependOnInheritedWidgetOfExactType<LoadingProgressBarTheme>();
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();
    return loadingProgressBarTheme?.data ??
        ticTacToeTheme?.loadingProgressBarThemeData;
  }

  @override
  bool updateShouldNotify(covariant LoadingProgressBarTheme oldWidget) =>
      data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return LoadingProgressBarTheme(data: data, child: child);
  }
}
