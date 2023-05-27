import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/module/widgets/widgets.dart';

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
        AppTypography(
          title,
          type: AppTypographyType.header2,
        ),
        SizedBox(
          height: 16.0.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: AppTypography(
            description,
            type: AppTypographyType.subtitle2,
          ),
        ),
      ],
    );
  }
}
