import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../widgets/text_typography/text_typography.dart';
import '../../../../../../../widgets/text_typography/text_typography_type.dart';

class OnboardingContent extends StatelessWidget {
  final String title;
  final String description;
  final bool isDarkMode;

  const OnboardingContent({
    required this.title,
    required this.description,
    required this.isDarkMode,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextTypography(
          title,
          isDarkMode: isDarkMode,
          type: TextTypographyType.header2,
        ),
        SizedBox(
          height: 16.0.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: TextTypography(
            description,
            isDarkMode: isDarkMode,
            type: TextTypographyType.subtitle2,
          ),
        ),
      ],
    );
  }
}
