import 'package:flutter/material.dart';
import 'step_indicator_container/step_indicator_container.dart';

import '../text_typography/text_typography.dart';

class StepFooter extends StatefulWidget {
  final bool isDarkMode;
  final int initStep;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  const StepFooter({
    required this.isDarkMode,
    required this.initStep,
    required this.onPrevious,
    required this.onNext,
    super.key,
  });

  @override
  State<StepFooter> createState() => _StepFooterState();
}

class _StepFooterState extends State<StepFooter> {
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
      children: [
        AnimatedOpacity(
          opacity: currentStep > 0 ? 1 : 0,
          duration: const Duration(milliseconds: 150),
          child: TextButton(
            onPressed: currentStep == 0
                ? null
                : () => setState(() {
                      currentStep -= 1;
                    }),
            child: TextTypography.secondary(
              "Back",
              isDarkMode: isDarkMode,
            ),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: StepIndicatorContainer(
            isDarkMode: isDarkMode,
            index: currentStep,
          ),
        ),
        TextButton(
          onPressed: currentStep == 2
              ? null
              : () => setState(() {
                    currentStep += 1;
                  }),
          child: TextTypography(
            "Next",
            isDarkMode: isDarkMode,
          ),
        ),
      ],
    );
  }

  bool get isDarkMode => widget.isDarkMode;

  int get initStep => widget.initStep;

  VoidCallback get onPrevious => widget.onPrevious;

  VoidCallback get onNext => widget.onNext;
}
