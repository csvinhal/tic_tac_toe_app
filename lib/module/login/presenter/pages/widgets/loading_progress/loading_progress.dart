import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/module/login/presenter/pages/widgets/loading_progress/loading_progress_bar.dart';
import 'package:tic_tac_toe_app/module/widgets/text_typography/text_typography.dart';

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
      children: [
        TextTypography(text),
        SizedBox(height: 12.0.h),
        LoadingProgressBar(progress: progress, darkMode: darkMode),
      ],
    );
  }
}
