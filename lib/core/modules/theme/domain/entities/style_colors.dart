import 'package:flutter/material.dart';

class StyleColors extends ThemeExtension<StyleColors> {
  final Color? blue;
  final Color? green;
  final Color? red;
  final Color? yellow;
  final Color? darkBlue;
  final Color? darkerBlue;
  final Color? dark;

  const StyleColors({
    required this.blue,
    required this.green,
    required this.red,
    this.yellow,
    this.darkBlue,
    this.darkerBlue,
    this.dark,
  });

  @override
  ThemeExtension<StyleColors> copyWith({
    Color? blue,
    Color? green,
    Color? red,
    Color? yellow,
    Color? darkBlue,
    Color? darkerBlue,
    Color? dark,
  }) {
    return StyleColors(
      blue: blue ?? this.blue,
      green: green ?? this.green,
      red: red ?? this.red,
      yellow: yellow ?? this.yellow,
      darkBlue: darkBlue ?? this.darkBlue,
      darkerBlue: darkerBlue ?? this.darkerBlue,
      dark: dark ?? this.dark,
    );
  }

  @override
  ThemeExtension<StyleColors> lerp(
    ThemeExtension<StyleColors>? other,
    double t,
  ) {
    if (other is! StyleColors) {
      return this;
    }
    return StyleColors(
      blue: Color.lerp(blue, other.blue, t),
      green: Color.lerp(green, other.green, t),
      red: Color.lerp(red, other.red, t),
      yellow: Color.lerp(yellow, other.yellow, t),
      darkBlue: Color.lerp(darkBlue, other.darkBlue, t),
      darkerBlue: Color.lerp(darkerBlue, other.darkerBlue, t),
      dark: Color.lerp(dark, other.dark, t),
    );
  }
}
