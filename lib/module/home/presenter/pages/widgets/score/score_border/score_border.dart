import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class ScoreBorder extends StatelessWidget {
  const ScoreBorder({
    required this.isDarkMode,
    super.key,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();

    final borderColor = isDarkMode
        ? ticTacToeTheme?.neutralColors?.darkerGrey ?? const Color(0xFF575757)
        : ticTacToeTheme?.neutralColors?.lightGrey ?? const Color(0xFFF1F1F1);

    return Container(
      height: 24.h,
      width: 1,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: borderColor,
            width: 1.w,
          ),
        ),
      ),
    );
  }
}
