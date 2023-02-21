import 'package:flutter/material.dart';
import 'text_typography_type.dart';

class TextTypography extends StatelessWidget {
  final String text;
  final TextTypographyType type;

  const TextTypography(
    this.text, {
    this.type = TextTypographyType.body1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle;

    switch (type) {
      case TextTypographyType.header1:
        textStyle = Theme.of(context).textTheme.headline1;
        break;
      case TextTypographyType.header2:
        textStyle = Theme.of(context).textTheme.headline2;
        break;
      case TextTypographyType.subtitle1:
        textStyle = Theme.of(context).textTheme.subtitle1;
        break;
      case TextTypographyType.subtitle1m:
        textStyle = Theme.of(context).textTheme.headlineMedium;
        break;
      case TextTypographyType.subtitle2:
        textStyle = Theme.of(context).textTheme.subtitle2;
        break;
      case TextTypographyType.subtitle2m:
        textStyle = Theme.of(context).textTheme.headlineSmall;
        break;
      case TextTypographyType.body1:
        textStyle = Theme.of(context).textTheme.bodyText1;
        break;
      case TextTypographyType.body1m:
        textStyle = Theme.of(context).textTheme.bodyMedium;
        break;
      case TextTypographyType.body2:
        textStyle = Theme.of(context).textTheme.bodyText2;
        break;
      default:
        textStyle = Theme.of(context).textTheme.bodyText1;
    }

    return Text(
      text,
      style: textStyle,
    );
  }
}
