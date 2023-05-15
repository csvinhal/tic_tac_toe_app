import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/module/widgets/text_typography/text_typography.dart';
import 'package:tic_tac_toe_app/module/widgets/text_typography/text_typography_type.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    required this.title,
    required this.description,
    required this.isDarkMode,
    super.key,
  });
  final String title;
  final String description;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextTypography(
          title,
          type: TextTypographyType.header2,
        ),
        SizedBox(
          height: 16.0.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: TextTypography(
            description,
            type: TextTypographyType.subtitle2,
          ),
        ),
      ],
    );
  }
}
