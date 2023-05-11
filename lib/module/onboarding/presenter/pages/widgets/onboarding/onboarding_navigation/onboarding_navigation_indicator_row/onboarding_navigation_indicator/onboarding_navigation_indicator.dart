import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../../core/modules/theme/domain/entities/entities.dart';

class OnboardingNavigationIndicator extends StatelessWidget {
  final bool isDarkMode;
  final bool active;

  const OnboardingNavigationIndicator({
    required this.isDarkMode,
    required this.active,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final NeutralColors? neutralColors =
        Theme.of(context).extension<NeutralColors>();
    final StyleColors? styleColors = Theme.of(context).extension<StyleColors>();

    Color? activeColor = styleColors?.blue;
    Color? defaultColor =
        isDarkMode ? neutralColors?.lightGrey : neutralColors?.grey;

    return Container(
      width: 12.0.w,
      height: 12.0.h,
      decoration: BoxDecoration(
        color: active ? activeColor : defaultColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0.r),
        ),
      ),
    );
  }
}
