import 'package:flutter/material.dart';

class NeutralColors {
  const NeutralColors({
    required this.white,
    required this.lighterGrey,
    required this.lightGrey,
    required this.grey,
    required this.darkGrey,
    required this.darkerGrey,
    required this.darkestGrey,
    required this.black,
  });

  final Color? white;
  final Color? lighterGrey;
  final Color? lightGrey;
  final Color? grey;
  final Color? darkGrey;
  final Color? darkerGrey;
  final Color? darkestGrey;
  final Color? black;

  NeutralColors copyWith({
    Color? white,
    Color? lighterGrey,
    Color? lightGrey,
    Color? grey,
    Color? darkGrey,
    Color? darkerGrey,
    Color? darkestGrey,
    Color? black,
  }) {
    return NeutralColors(
      white: white ?? this.white,
      lighterGrey: lighterGrey ?? this.lighterGrey,
      lightGrey: lightGrey ?? this.lightGrey,
      grey: grey ?? this.grey,
      darkGrey: darkGrey ?? this.darkGrey,
      darkerGrey: darkerGrey ?? this.darkerGrey,
      darkestGrey: darkestGrey ?? this.darkestGrey,
      black: black ?? this.black,
    );
  }

  NeutralColors lerp(
    NeutralColors? other,
    double t,
  ) {
    return NeutralColors(
      white: Color.lerp(white, other?.white, t),
      lighterGrey: Color.lerp(lighterGrey, other?.lighterGrey, t),
      lightGrey: Color.lerp(lightGrey, other?.lightGrey, t),
      grey: Color.lerp(grey, other?.grey, t),
      darkGrey: Color.lerp(darkGrey, other?.darkGrey, t),
      darkerGrey: Color.lerp(darkerGrey, other?.darkerGrey, t),
      darkestGrey: Color.lerp(darkestGrey, other?.darkestGrey, t),
      black: Color.lerp(black, other?.black, t),
    );
  }
}
