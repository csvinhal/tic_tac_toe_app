import 'package:design/design.dart';
import 'package:flutter/material.dart';

import 'text_typography_style_type.dart';
import 'text_typography_type.dart';

class TextTypography extends StatelessWidget {
  final bool isDarkMode;
  final String text;
  final TextTypographyType type;
  final TextTypographyStyleType styleType;
  final Color? color;

  const TextTypography(
    this.text, {
    required this.isDarkMode,
    this.type = TextTypographyType.body1,
    this.styleType = TextTypographyStyleType.primary,
    this.color,
    super.key,
  });

  const TextTypography.secondary(
    this.text, {
    required this.isDarkMode,
    this.type = TextTypographyType.body1,
    this.color,
    super.key,
  }) : styleType = TextTypographyStyleType.secondary;

  @override
  Widget build(BuildContext context) {
    final TextColors? textColors = Theme.of(context).extension<TextColors>();
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
      default:
        textStyle = Theme.of(context).textTheme.bodyLarge;
    }

    Color? textColor;

    if (styleType == TextTypographyStyleType.secondary) {
      textColor = textColors?.secondary;
    } else {
      textColor = textColors?.primary;
    }

    return Text(
      text,
      style: textStyle?.copyWith(
        color: color ?? textColor,
      ),
    );
  }
}
