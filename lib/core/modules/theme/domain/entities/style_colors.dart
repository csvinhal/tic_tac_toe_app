import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class StyleColors extends Equatable {
  const StyleColors({
    required this.blue,
    required this.green,
    required this.red,
    this.yellow,
    this.darkBlue,
    this.darkerBlue,
    this.dark,
  });

  final Color? blue;
  final Color? green;
  final Color? red;
  final Color? yellow;
  final Color? darkBlue;
  final Color? darkerBlue;
  final Color? dark;

  StyleColors copyWith({
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

  static StyleColors? lerp(
    StyleColors? a,
    StyleColors? b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }

    return StyleColors(
      blue: Color.lerp(a?.blue, b?.blue, t),
      green: Color.lerp(a?.green, b?.green, t),
      red: Color.lerp(a?.red, b?.red, t),
      yellow: Color.lerp(a?.yellow, b?.yellow, t),
      darkBlue: Color.lerp(a?.darkBlue, b?.darkBlue, t),
      darkerBlue: Color.lerp(a?.darkerBlue, b?.darkerBlue, t),
      dark: Color.lerp(a?.dark, b?.dark, t),
    );
  }

  @override
  List<Object?> get props {
    return [
      blue,
      green,
      red,
      yellow,
      darkBlue,
      darkerBlue,
      dark,
    ];
  }
}
