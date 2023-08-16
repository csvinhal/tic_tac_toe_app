import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/app_icons_assets.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    required this.text,
    this.onPressed,
    super.key,
  });

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18.h),
      child: Row(
        children: [
          if (onPressed != null)
            Padding(
              padding: EdgeInsets.only(right: 14.w),
              child: IconButton(
                icon: Image.asset(AppIconsAssets.backArrow),
                splashRadius: 24.w,
                onPressed: onPressed,
              ),
            ),
          AppTypography(
            text,
            type: AppTypographyType.header2,
          ),
        ],
      ),
    );
  }
}
