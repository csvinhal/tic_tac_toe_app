import 'package:flutter/material.dart';

class TextColors extends ThemeExtension<TextColors> {
  final Color? primary;
  final Color? secondary;

  const TextColors({
    required this.primary,
    required this.secondary,
  });

  @override
  ThemeExtension<TextColors> copyWith({
    Color? primary,
    Color? secondary,
  }) {
    return TextColors(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
    );
  }

  @override
  ThemeExtension<TextColors> lerp(ThemeExtension<TextColors>? other, double t) {
    if (other is! TextColors) {
      return this;
    }
    return TextColors(
      primary: Color.lerp(primary, other.primary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
    );
  }
}
