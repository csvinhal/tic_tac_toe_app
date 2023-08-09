// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class Score extends StatelessWidget {
  const Score({
    required this.children,
    super.key,
  });

  final List<ScoreItem> children;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 24.h),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => children[index],
      separatorBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: const _ScoreSplitter(),
      ),
      itemCount: children.length,
    );
  }
}

class _ScoreSplitter extends StatelessWidget {
  const _ScoreSplitter({
    Key? key,
  }) : super(key: key);

  ScoreThemeData? themeStyleOf(BuildContext context) {
    return ScoreTheme.of(context);
  }

  ScoreThemeData defaultStyleOf() {
    return ScoreThemeData.fallback();
  }

  @override
  Widget build(BuildContext context) {
    final themeStyle = themeStyleOf(context);
    final defaultStyle = defaultStyleOf();
    final themeData = themeStyle ?? defaultStyle;

    return Container(
      height: 24.h,
      width: 1,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: themeData.borderColor!,
            width: 1.w,
          ),
        ),
      ),
    );
  }
}
