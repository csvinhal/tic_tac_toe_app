import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class NeutralColors extends Equatable {
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

  static NeutralColors? lerp(
    NeutralColors? a,
    NeutralColors? b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }
    return NeutralColors(
      white: Color.lerp(a?.white, b?.white, t),
      lighterGrey: Color.lerp(a?.lighterGrey, b?.lighterGrey, t),
      lightGrey: Color.lerp(a?.lightGrey, b?.lightGrey, t),
      grey: Color.lerp(a?.grey, b?.grey, t),
      darkGrey: Color.lerp(a?.darkGrey, b?.darkGrey, t),
      darkerGrey: Color.lerp(a?.darkerGrey, b?.darkerGrey, t),
      darkestGrey: Color.lerp(a?.darkestGrey, b?.darkestGrey, t),
      black: Color.lerp(a?.black, b?.black, t),
    );
  }

  @override
  List<Object?> get props {
    return [
      white,
      lighterGrey,
      lightGrey,
      grey,
      darkGrey,
      darkerGrey,
      darkestGrey,
      black,
    ];
  }
}
