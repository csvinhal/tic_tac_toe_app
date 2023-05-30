import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';

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
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();

    final activeColor = ticTacToeTheme?.styleColors.blue;
    final defaultColor = isDarkMode
        ? ticTacToeTheme?.neutralColors.lightGrey
        : ticTacToeTheme?.neutralColors.grey;

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
