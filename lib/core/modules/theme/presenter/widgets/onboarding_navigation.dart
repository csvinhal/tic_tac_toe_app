import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class OnboardingNavigation extends StatefulWidget {
  const OnboardingNavigation({
    required this.nextLabel,
    required this.previousLabel,
    required this.currentStep,
    required this.onPrevious,
    required this.onNext,
    required this.totalSteps,
    super.key,
  });

  final String nextLabel;
  final String previousLabel;
  final int totalSteps;
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
            child: AppTypography.secondary(_previousLabel),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < _totalSteps; i++)
                Padding(
                  padding:
                      EdgeInsets.only(right: i + 1 == _totalSteps ? 0 : 6.w),
                  child: _OnboardingNavigationIndicator(
                    active: _currentStep == i,
                  ),
                ),
            ],
          ),
        ),
        TextButton(
          onPressed: _onNext,
          child: AppTypography(_nextLabel),
        ),
      ],
    );
  }

  String get _previousLabel => widget.previousLabel;

  String get _nextLabel => widget.nextLabel;

  int get _totalSteps => widget.totalSteps;

  int get _currentStep => widget.currentStep;

  VoidCallback get _onPrevious => widget.onPrevious;

  VoidCallback get _onNext => widget.onNext;
}

class _OnboardingNavigationIndicator extends StatelessWidget {
  // ignore: use_super_parameters
  const _OnboardingNavigationIndicator({required this.active, Key? key})
      : super(key: key);

  final bool active;

  OnboardingThemeData? themeStyleOf(BuildContext context) {
    return OnboardingTheme.of(context);
  }

  OnboardingThemeData defaultStyleOf() {
    return OnboardingThemeData.fallback();
  }

  @override
  Widget build(BuildContext context) {
    final themeStyle = themeStyleOf(context);
    final defaultStyle = defaultStyleOf();
    final themeData = themeStyle ?? defaultStyle;

    final activeColor = themeData.activeIndicatorColor;
    final defaultColor = themeData.defaultIndicatorColor;

    return Container(
      width: 12.0.w,
      height: 12.0.h,
      decoration: BoxDecoration(
        color: active ? activeColor : defaultColor,
        borderRadius: BorderRadius.all(Radius.circular(20.0.r)),
      ),
    );
  }
}
