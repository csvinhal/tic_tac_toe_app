import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class LoadingProgress extends StatelessWidget {
  const LoadingProgress({
    required this.text,
    required this.progress,
    required this.darkMode,
    super.key,
  });

  final String text;
  final double progress;
  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTypography(text),
        SizedBox(height: 12.0.h),
        LoadingProgressBar(progress: progress),
      ],
    );
  }
}
