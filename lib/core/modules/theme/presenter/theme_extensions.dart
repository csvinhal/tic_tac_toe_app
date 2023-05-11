import 'package:flutter/material.dart';

import '../domain/entities/entities.dart';

class ThemeExtensions {
  static Iterable<ThemeExtension<dynamic>> lightExtensions = [
    const NeutralColors(
      white: Color(0xFFFFFFFF),
      lighterGrey: Color(0xFFF1F1F1),
      lightGrey: Color(0xFFE3E3E3),
      grey: Color(0xFFADADAD),
      darkGrey: Color(0xFF808080),
      darkerGrey: Color(0xFF575757),
      darkestGrey: Color(0xFF282828),
      black: Color(0xFF000000),
    ),
    const TextColors(
      primary: Color(0xFF000000),
      secondary: Color(0xFFADADAD),
    ),
    const StyleColors(
      blue: Color(0xFF46A3FF),
      green: Color(0xFF00C096),
      red: Color(0xFFFF827E),
      yellow: Color(0xFFFFB048),
    )
  ];

  static Iterable<ThemeExtension<dynamic>> darkExtensions = [
    const NeutralColors(
      white: Color(0xFFFFFFFF),
      lighterGrey: Color(0xFFF1F1F1),
      lightGrey: Color(0xFFE3E3E3),
      grey: Color(0xFFADADAD),
      darkGrey: Color(0xFF808080),
      darkerGrey: Color(0xFF575757),
      darkestGrey: Color(0xFF282828),
      black: Color(0xFF000000),
    ),
    const TextColors(
      primary: Color(0xFFE3E3E3),
      secondary: Color(0xFF808080),
    ),
    const StyleColors(
      blue: Color(0xFF225577),
      green: Color(0xFF00A682),
      red: Color(0xFFE45651),
      darkBlue: Color(0xFF212835),
      darkerBlue: Color(0xFF12161F),
      dark: Color(0xFF0C1017),
    )
  ];
}
