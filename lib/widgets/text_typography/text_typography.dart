import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/modules/theme/domain/entities/text_colors.dart';
import 'package:tic_tac_toe_app/widgets/text_typography/text_typography_style_type.dart';
import 'package:tic_tac_toe_app/widgets/text_typography/text_typography_type.dart';

class TextTypography extends StatelessWidget {
  const TextTypography(
    this.text, {
    this.type = TextTypographyType.body1,
    this.styleType = TextTypographyStyleType.primary,
    this.color,
    super.key,
  });
  const TextTypography.secondary(
    this.text, {
    this.type = TextTypographyType.body1,
    this.color,
    super.key,
  }) : styleType = TextTypographyStyleType.secondary;

  final String text;
  final TextTypographyType type;
  final TextTypographyStyleType styleType;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle;

    switch (type) {
      case TextTypographyType.header1:
        textStyle = Theme.of(context).textTheme.displayLarge;
        break;
      case TextTypographyType.header2:
        textStyle = Theme.of(context).textTheme.displayMedium;
        break;
      case TextTypographyType.subtitle1:
        textStyle = Theme.of(context).textTheme.headlineMedium;
        break;
      case TextTypographyType.subtitle1m:
        textStyle = Theme.of(context).textTheme.headlineSmall;
        break;
      case TextTypographyType.subtitle2:
        textStyle = Theme.of(context).textTheme.titleMedium;
        break;
      case TextTypographyType.subtitle2m:
        textStyle = Theme.of(context).textTheme.titleSmall;
        break;
      case TextTypographyType.body1:
        textStyle = Theme.of(context).textTheme.bodyLarge;
        break;
      case TextTypographyType.body1m:
        textStyle = Theme.of(context).textTheme.bodyMedium;
        break;
      case TextTypographyType.body2:
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
    final textColors = Theme.of(context).extension<TextColors>();

    return styleType == TextTypographyStyleType.secondary
        ? textColors?.secondary
        : textColors?.primary;
  }
}
