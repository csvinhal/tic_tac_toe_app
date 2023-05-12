import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/modules/theme/domain/entities/entities.dart';

class OnboardingNavigationIndicator extends StatelessWidget {
  const OnboardingNavigationIndicator({
    required this.isDarkMode,
    required this.active,
    super.key,
  });
  final bool isDarkMode;
  final bool active;

  @override
  Widget build(BuildContext context) {
    final neutralColors = Theme.of(context).extension<NeutralColors>();
    final styleColors = Theme.of(context).extension<StyleColors>();

    final activeColor = styleColors?.blue;
    final defaultColor =
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
