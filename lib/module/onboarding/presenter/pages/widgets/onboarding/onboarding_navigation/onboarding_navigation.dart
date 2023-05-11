import 'package:flutter/material.dart';

import '../../../../../../../widgets/text_typography/text_typography.dart';
import 'onboarding_navigation_indicator_row/onboarding_navigation_indicator_row.dart';

class OnboardingNavigation extends StatefulWidget {
  final bool isDarkMode;
  final int initStep;
  final void Function(int index) onPrevious;
  final void Function(int index) onNext;

  const OnboardingNavigation({
    required this.isDarkMode,
    required this.initStep,
    required this.onPrevious,
    required this.onNext,
    super.key,
  });

  @override
  State<OnboardingNavigation> createState() => _OnboardingNavigationState();
}

class _OnboardingNavigationState extends State<OnboardingNavigation> {
  late int currentStep;
  int opacityLevel = 1;

  @override
  void initState() {
    currentStep = initStep;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimatedOpacity(
          opacity: currentStep > 0 ? 1 : 0,
          duration: const Duration(milliseconds: 150),
          child: TextButton(
            onPressed: currentStep == 0
                ? null
                : () {
                    setState(() {
                      currentStep -= 1;
                    });
                    onPrevious(currentStep);
                  },
            child: TextTypography.secondary(
              'Back',
              isDarkMode: isDarkMode,
            ),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: OnboardingNavigationIndicatorRow(
            isDarkMode: isDarkMode,
            index: currentStep,
          ),
        ),
        TextButton(
          onPressed: currentStep == 2
              ? null
              : () {
                  setState(() {
                    currentStep += 1;
                  });
                  onNext(currentStep);
                },
          child: TextTypography(
            'Next',
            isDarkMode: isDarkMode,
          ),
        ),
      ],
    );
  }

  bool get isDarkMode => widget.isDarkMode;

  int get initStep => widget.initStep;

  void Function(int index) get onPrevious => widget.onPrevious;

  void Function(int index) get onNext => widget.onNext;
}
