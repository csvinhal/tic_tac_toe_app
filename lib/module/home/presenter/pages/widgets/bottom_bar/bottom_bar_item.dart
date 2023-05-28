import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    required this.icon,
    this.onTap,
    super.key,
  });

  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48.h,
        width: 48.w,
        child: FittedBox(
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(24.r),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: onTap,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                  horizontal: 12.w,
                ),
                child: SizedBox(
                  width: 24.w,
                  height: 24.h,
                  child: Image.asset(icon),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
