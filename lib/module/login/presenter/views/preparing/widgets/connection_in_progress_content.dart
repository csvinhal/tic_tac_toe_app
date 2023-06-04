import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/module/login/presenter/views/preparing/widgets/widgets.dart';

class ConnectionInProgress extends StatelessWidget {
  const ConnectionInProgress({
    required this.text,
    required this.progress,
    super.key,
  });

  final double progress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: LoadingProgress(
            progress: progress,
            text: text,
          ),
        ),
      ],
    );
  }
}
