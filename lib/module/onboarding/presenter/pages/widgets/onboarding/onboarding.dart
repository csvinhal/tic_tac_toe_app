import 'package:flutter/material.dart';

import 'onboarding_content/onboarding_content.dart';
import 'onboarding_image/onboarding_image.dart';

class Onboarding extends StatelessWidget {
  final String path;
  final String title;
  final String description;
  final bool isDarkMode;

  const Onboarding({
    required this.path,
    required this.title,
    required this.description,
    required this.isDarkMode,
    super.key,
  });

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
