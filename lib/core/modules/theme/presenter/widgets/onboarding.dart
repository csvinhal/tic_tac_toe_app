// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({
    required this.image,
    required this.title,
    required this.description,
    super.key,
  });

  final ImageAssetValue image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _OnboardingImage(
          image: image,
        ),
        SizedBox(height: 80.h),
        _OnboardingContent(
          title: title,
          description: description,
        ),
      ],
    );
  }
}

class _OnboardingImage extends StatelessWidget {
  const _OnboardingImage({
    required this.image,
    Key? key,
  }) : super(key: key);

  final ImageAssetValue image;

  @override
  Widget build(BuildContext context) {
    return ImageAssets.image(
      image: image,
      width: 200.0.w,
      height: 200.0.h,
    );
  }
}

class _OnboardingContent extends StatelessWidget {
  const _OnboardingContent({
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTypography(
          title,
          type: AppTypographyType.header2,
        ),
        SizedBox(height: 16.0.h),
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
