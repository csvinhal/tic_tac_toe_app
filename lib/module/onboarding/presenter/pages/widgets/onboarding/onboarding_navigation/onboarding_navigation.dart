import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/module/onboarding/presenter/pages/widgets/onboarding/onboarding_navigation/onboarding_navigation_indicator_row/onboarding_navigation_indicator_row.dart';
import 'package:tic_tac_toe_app/module/widgets/widgets.dart';

class OnboardingNavigation extends StatefulWidget {
  const OnboardingNavigation({
    required this.isDarkMode,
    required this.currentStep,
    required this.onPrevious,
    required this.onNext,
    super.key,
  });
  final bool isDarkMode;
  final int currentStep;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  @override
  State<OnboardingNavigation> createState() => _OnboardingNavigationState();
}

class _OnboardingNavigationState extends State<OnboardingNavigation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimatedOpacity(
          opacity: _currentStep > 0 ? 1 : 0,
          duration: const Duration(milliseconds: 150),
          child: TextButton(
            onPressed: _currentStep == 0 ? null : _onPrevious,
            child: const AppTypography.secondary(
              'Back',
            ),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: OnboardingNavigationIndicatorRow(
            isDarkMode: _isDarkMode,
            index: _currentStep,
          ),
        ),
        TextButton(
          onPressed: _onNext,
          child: const AppTypography(
            'Next',
          ),
        ),
      ],
    );
  }

  bool get _isDarkMode => widget.isDarkMode;

  int get _currentStep => widget.currentStep;

  VoidCallback get _onPrevious => widget.onPrevious;

  VoidCallback get _onNext => widget.onNext;
}
