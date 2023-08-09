import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class ScoreItem extends StatelessWidget {
  const ScoreItem({
    required this.value,
    required this.label,
    super.key,
  });

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTypography(value, type: AppTypographyType.header1),
        AppTypography.secondary(label),
      ],
    );
  }
}
