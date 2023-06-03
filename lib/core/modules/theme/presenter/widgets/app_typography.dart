import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/core.dart';

enum AppTypographyStyleType {
  primary,
  secondary,
}

enum AppTypographyType {
  header1,
  header2,
  subtitle1,
  subtitle1m,
  subtitle2,
  subtitle2m,
  body1,
  body1m,
  body2,
}

class AppTypography extends StatelessWidget {
  const AppTypography(
    this.text, {
    this.type = AppTypographyType.body1,
    this.styleType = AppTypographyStyleType.primary,
    this.color,
    super.key,
  });
  const AppTypography.secondary(
    this.text, {
    this.type = AppTypographyType.body1,
    this.color,
    super.key,
  }) : styleType = AppTypographyStyleType.secondary;

  final String text;
  final AppTypographyType type;
  final AppTypographyStyleType styleType;
  final Color? color;

  AppTypographyThemeData? themeStyleOf(BuildContext context) {
    return AppTypographyTheme.of(context);
  }

  AppTypographyThemeData defaultStyleOf() {
    return AppTypographyThemeData.fallback();
  }

  @override
  Widget build(BuildContext context) {
    final themeStyle = themeStyleOf(context);
    final defaultStyle = defaultStyleOf();
    final themeData = themeStyle ?? defaultStyle;

    final textStyle = _getStyleByAppTypographyType(context);
    final defaultTextColor = _getColorByTextTypographyStyleType(themeData);

    return Text(
      text,
      style: textStyle?.copyWith(color: color ?? defaultTextColor),
      textAlign: TextAlign.center,
    );
  }

  TextStyle? _getStyleByAppTypographyType(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    switch (type) {
      case AppTypographyType.header1:
        return textTheme.displayLarge;
      case AppTypographyType.header2:
        return textTheme.displayMedium;

      case AppTypographyType.subtitle1:
        return textTheme.headlineMedium;

      case AppTypographyType.subtitle1m:
        return textTheme.headlineSmall;

      case AppTypographyType.subtitle2:
        return textTheme.titleMedium;

      case AppTypographyType.subtitle2m:
        return textTheme.titleSmall;

      case AppTypographyType.body1:
        return textTheme.bodyLarge;

      case AppTypographyType.body1m:
        return textTheme.bodyMedium;

      case AppTypographyType.body2:
        return textTheme.bodySmall;
    }
  }

  Color? _getColorByTextTypographyStyleType(AppTypographyThemeData themeData) {
    return styleType == AppTypographyStyleType.secondary
        ? themeData.secondaryColor
        : themeData.primaryColor;
  }
}
