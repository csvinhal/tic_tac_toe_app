import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:tic_tac_toe_app/core/core.dart';

@immutable
class AppTypographyThemeData extends Equatable with Diagnosticable {
  const AppTypographyThemeData({
    required this.primaryColor,
    required this.secondaryColor,
  });

  factory AppTypographyThemeData.fallback() => const AppTypographyThemeData(
        primaryColor: AppLightStaticColor.black,
        secondaryColor: AppLightStaticColor.grey,
      );

  final Color? primaryColor;
  final Color? secondaryColor;

  static AppTypographyThemeData? lerp(
    AppTypographyThemeData? a,
    AppTypographyThemeData? b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }
    return AppTypographyThemeData(
      primaryColor: Color.lerp(a?.primaryColor, b?.primaryColor, t),
      secondaryColor: Color.lerp(a?.secondaryColor, b?.secondaryColor, t),
    );
  }

  @override
  List<Object?> get props => [primaryColor, secondaryColor];
}

class AppTypographyTheme extends InheritedTheme {
  const AppTypographyTheme({
    required this.data,
    required super.child,
    super.key,
  });

  final AppTypographyThemeData data;

  static AppTypographyThemeData? of(BuildContext context) {
    final typographyTheme =
        context.dependOnInheritedWidgetOfExactType<AppTypographyTheme>();
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();
    return typographyTheme?.data ?? ticTacToeTheme?.appTypographyThemeData;
  }

  @override
  bool updateShouldNotify(covariant AppTypographyTheme oldWidget) =>
      data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return AppTypographyTheme(data: data, child: child);
  }
}
