import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class TicTacToeTheme extends ThemeExtension<TicTacToeTheme> {
  const TicTacToeTheme({
    required this.neutralColors,
    required this.textColors,
    required this.styleColors,
  });

  final NeutralColors neutralColors;
  final TextColors textColors;
  final StyleColors styleColors;

  @override
  ThemeExtension<TicTacToeTheme> copyWith({
    NeutralColors? neutralColors,
    TextColors? textColors,
    StyleColors? styleColors,
  }) {
    return TicTacToeTheme(
      neutralColors: neutralColors ?? this.neutralColors,
      textColors: textColors ?? this.textColors,
      styleColors: styleColors ?? this.styleColors,
    );
  }

  @override
  ThemeExtension<TicTacToeTheme> lerp(
    covariant ThemeExtension<TicTacToeTheme>? other,
    double t,
  ) {
    if (other is! TicTacToeTheme) {
      return this;
    }

    return TicTacToeTheme(
      neutralColors: neutralColors.lerp(other.neutralColors, t),
      styleColors: styleColors.lerp(other.styleColors, t),
      textColors: textColors.lerp(other.textColors, t),
    );
  }
}
