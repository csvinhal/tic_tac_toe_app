import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/widgets/widgets.dart';

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

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle;

    switch (type) {
      case AppTypographyType.header1:
        textStyle = Theme.of(context).textTheme.displayLarge;
        break;
      case AppTypographyType.header2:
        textStyle = Theme.of(context).textTheme.displayMedium;
        break;
      case AppTypographyType.subtitle1:
        textStyle = Theme.of(context).textTheme.headlineMedium;
        break;
      case AppTypographyType.subtitle1m:
        textStyle = Theme.of(context).textTheme.headlineSmall;
        break;
      case AppTypographyType.subtitle2:
        textStyle = Theme.of(context).textTheme.titleMedium;
        break;
      case AppTypographyType.subtitle2m:
        textStyle = Theme.of(context).textTheme.titleSmall;
        break;
      case AppTypographyType.body1:
        textStyle = Theme.of(context).textTheme.bodyLarge;
        break;
      case AppTypographyType.body1m:
        textStyle = Theme.of(context).textTheme.bodyMedium;
        break;
      case AppTypographyType.body2:
        textStyle = Theme.of(context).textTheme.bodySmall;
        break;
    }

    final defaultTextColor = _getColorByTextTypographyStyleType(context);

    return Text(
      text,
      style: textStyle?.copyWith(
        color: color ?? defaultTextColor,
      ),
      textAlign: TextAlign.center,
    );
  }

  Color? _getColorByTextTypographyStyleType(BuildContext context) {
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();

    return styleType == AppTypographyStyleType.secondary
        ? ticTacToeTheme?.textColors.secondary
        : ticTacToeTheme?.textColors.primary;
  }
}
