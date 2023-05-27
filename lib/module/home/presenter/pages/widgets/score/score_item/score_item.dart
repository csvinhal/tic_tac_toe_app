import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/module/widgets/text_typography/text_typography.dart';
import 'package:tic_tac_toe_app/module/widgets/text_typography/text_typography_type.dart';

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
    return Expanded(
      child: Column(
        children: [
          TextTypography(value, type: TextTypographyType.header1),
          TextTypography.secondary(label),
        ],
      ),
    );
  }
}
