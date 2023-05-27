import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/module/onboarding/presenter/pages/widgets/widgets.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({
    required this.path,
    required this.title,
    required this.description,
    required this.isDarkMode,
    super.key,
  });

  final String path;
  final String title;
  final String description;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnboardingImage(
          path: path,
        ),
        OnboardingContent(
          title: title,
          description: description,
          isDarkMode: isDarkMode,
        ),
      ],
    );
  }
}
