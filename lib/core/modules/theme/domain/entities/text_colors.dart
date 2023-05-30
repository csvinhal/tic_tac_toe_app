import 'package:flutter/material.dart';

class TextColors {
  const TextColors({
    required this.primary,
    required this.secondary,
  });

  final Color? primary;
  final Color? secondary;

  TextColors copyWith({
    Color? primary,
    Color? secondary,
  }) {
    return TextColors(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
    );
  }

  TextColors lerp(TextColors? other, double t) {
    return TextColors(
      primary: Color.lerp(primary, other?.primary, t),
      secondary: Color.lerp(secondary, other?.secondary, t),
    );
  }
}
