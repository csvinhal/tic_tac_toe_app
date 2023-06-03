import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class AppButton extends StatelessWidget {
  const AppButton(
    this.label, {
    this.onPressed,
    this.appButtonType = AppButtonType.normal,
    this.icon,
    super.key,
  });

  final String? icon;
  final AppButtonType? appButtonType;
  final VoidCallback? onPressed;
  final String label;

  AppButtonThemeData? themeStyleOf(BuildContext context) {
    return AppButtonTheme.of(context);
  }

  AppButtonThemeData defaultStyleOf() {
    return AppButtonThemeData.fallback();
  }

  @override
  Widget build(BuildContext context) {
    final themeStyle = themeStyleOf(context);
    final defaultStyle = defaultStyleOf();
    final themeData = themeStyle ?? defaultStyle;

    final borderRadius = BorderRadius.circular(4.0.r);
    final backgroundColor = _getBackgroundColor(themeData);
    final borderColor = _getBorderColor(themeData);

    return Material(
    color: backgroundColor,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 54.0.h,
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor!,
              width: 1.0.w,
            ),
            borderRadius: borderRadius,
          ),
          padding: EdgeInsets.symmetric(vertical: 16.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                ExcludeSemantics(
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.0.w),
                    child: SizedBox(
                      width: 20.0.w,
                      height: 20.0.h,
                      child: Image.asset(icon!),
                    ),
                  ),
                ),
              AppTypography(
                label,
                // color: textColor,
              )
            ],
          ),
        ),
      ),
    );
  }

  bool get enabled => onPressed != null;

  Color? _getBackgroundColor(AppButtonThemeData themeData) {
    if (enabled) {
      switch (appButtonType) {
        case AppButtonType.accent:
          return themeData.accentColor;
        case AppButtonType.primary:
          return themeData.primaryColor;
        case AppButtonType.normal:
        case null:
          return themeData.normalColor;
      }
    }

    return themeData.disabledButtonColor;
  }

  Color? _getBorderColor(AppButtonThemeData themeData) {
    if (enabled) {
      switch (appButtonType) {
        case AppButtonType.accent:
          return themeData.accentColor;
        case AppButtonType.primary:
          return themeData.primaryColor;
        case AppButtonType.normal:
        case null:
          return themeData.normalBorderColor;
      }
    }

    return themeData.disabledButtonColor;
  }
}
