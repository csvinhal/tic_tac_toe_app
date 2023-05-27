import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class GameHistoryContainer extends StatelessWidget {
  const GameHistoryContainer({
    required this.child,
    required this.isDarkMode,
    super.key,
  });

  final Widget child;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    final neutralColors = Theme.of(context).extension<NeutralColors>();
    final styleColors = Theme.of(context).extension<StyleColors>();

    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: 146.h),
      decoration: BoxDecoration(
        color:
            isDarkMode ? styleColors?.darkerBlue : neutralColors?.lighterGrey,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: child,
    );
  }
}
