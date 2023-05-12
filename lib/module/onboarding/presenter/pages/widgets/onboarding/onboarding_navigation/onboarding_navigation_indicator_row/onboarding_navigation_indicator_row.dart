import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/module/onboarding/presenter/pages/widgets/onboarding/onboarding_navigation/onboarding_navigation_indicator_row/onboarding_navigation_indicator/onboarding_navigation_indicator.dart';

class OnboardingNavigationIndicatorRow extends StatelessWidget {
  const OnboardingNavigationIndicatorRow({
    required this.isDarkMode,
    required this.index,
    super.key,
  });

  final bool isDarkMode;
  final int index;

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
