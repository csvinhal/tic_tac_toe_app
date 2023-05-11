import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingImage extends StatelessWidget {
  final String path;

  const OnboardingImage({
    required this.path,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0.w,
      height: 200.0.h,
      child: Image.asset(path),
    );
  }
}
