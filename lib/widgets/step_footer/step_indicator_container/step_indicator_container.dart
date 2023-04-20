import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../step_indicator/step_indicator.dart';

class StepIndicatorContainer extends StatelessWidget {
  final bool isDarkMode;
  final int index;

  const StepIndicatorContainer({
    required this.isDarkMode,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StepIndicator(
          isDarkMode: isDarkMode,
          active: index == 0,
        ),
        SizedBox(
          width: 6.0.w,
        ),
        StepIndicator(
          isDarkMode: isDarkMode,
          active: index == 1,
        ),
        SizedBox(
          width: 6.0.w,
        ),
        StepIndicator(
          isDarkMode: isDarkMode,
          active: index == 2,
        ),
      ],
    );
  }
}
