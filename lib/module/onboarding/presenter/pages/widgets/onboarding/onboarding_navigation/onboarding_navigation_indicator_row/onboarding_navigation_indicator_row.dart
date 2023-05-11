import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'onboarding_navigation_indicator/onboarding_navigation_indicator.dart';

class OnboardingNavigationIndicatorRow extends StatelessWidget {
  final bool isDarkMode;
  final int index;

  const OnboardingNavigationIndicatorRow({
    required this.isDarkMode,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnboardingNavigationIndicator(
          isDarkMode: isDarkMode,
          active: index == 0,
        ),
        SizedBox(
          width: 6.0.w,
        ),
        OnboardingNavigationIndicator(
          isDarkMode: isDarkMode,
          active: index == 1,
        ),
        SizedBox(
          width: 6.0.w,
        ),
        OnboardingNavigationIndicator(
          isDarkMode: isDarkMode,
          active: index == 2,
        ),
      ],
    );
  }
}
