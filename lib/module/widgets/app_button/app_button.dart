import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/widgets/widgets.dart';

enum AppButtonColors {
  standard,
  blue,
  red,
}

class AppButton extends StatelessWidget {
  const AppButton(
    this.label, {
    required this.darkMode,
    required this.onTap,
    this.icon,
    this.color = AppButtonColors.standard,
    this.disabled = false,
    super.key,
  });

  final String label;
  final String? icon;
  final AppButtonColors color;
  final bool disabled;
  final bool darkMode;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(4.0.r);
    final backgroundColor = _getDefaultColor(context);
    final textColor = _getTextColor(context);

    return Material(
      color: backgroundColor,
      borderRadius: borderRadius,
      child: InkWell(
        splashColor: Colors.transparent,
        borderRadius: borderRadius,
        onTap: onTap,
        child: Container(
          height: 54.0.h,
          decoration: BoxDecoration(
            border: Border.all(
              color: _getBorderColor(context),
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
                color: textColor,
              )
            ],
          ),
        ),
      ),
    );
  }

  Color _getBorderColor(BuildContext context) {
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();

    if (darkMode) {
      if (disabled) {
        return ticTacToeTheme?.neutralColors.darkerGrey ??
            const Color(0xFF575757);
      }

      switch (color) {
        case AppButtonColors.blue:
          return ticTacToeTheme?.styleColors.blue ?? const Color(0xFF46A3FF);
        case AppButtonColors.red:
          return ticTacToeTheme?.styleColors.red ?? const Color(0xFFFF827E);
        case AppButtonColors.standard:
          return ticTacToeTheme?.styleColors.darkBlue ??
              const Color(0xFF212835);
      }
    }

    switch (color) {
      case AppButtonColors.blue:
        return ticTacToeTheme?.styleColors.blue ?? const Color(0xFF225577);
      case AppButtonColors.red:
        return ticTacToeTheme?.styleColors.red ?? const Color(0xFFE45651);
      case AppButtonColors.standard:
        return ticTacToeTheme?.neutralColors.lightGrey ??
            const Color(0xFFE3E3E3);
    }
  }

  Color? _getDefaultColor(BuildContext context) {
    if (darkMode) {
      return _getDarkDefaultColor(context);
    }
    return _getLightDefaultColor(context);
  }

  Color? _getDarkDefaultColor(BuildContext context) {
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();

    if (disabled) {
      return ticTacToeTheme?.neutralColors.darkerGrey;
    }

    switch (color) {
      case AppButtonColors.red:
        return ticTacToeTheme?.styleColors.red;
      case AppButtonColors.blue:
        return ticTacToeTheme?.styleColors.blue;
      case AppButtonColors.standard:
        return ticTacToeTheme?.styleColors.dark;
    }
  }

  Color? _getLightDefaultColor(BuildContext context) {
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();

    if (disabled) {
      return ticTacToeTheme?.neutralColors.lightGrey;
    }

    switch (color) {
      case AppButtonColors.red:
        return ticTacToeTheme?.styleColors.red;
      case AppButtonColors.blue:
        return ticTacToeTheme?.styleColors.blue;
      case AppButtonColors.standard:
        return ticTacToeTheme?.neutralColors.white;
    }
  }

  Color? _getTextColor(BuildContext context) {
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();

    if (darkMode) {
      if (disabled) {
        return ticTacToeTheme?.neutralColors.darkestGrey;
      }

      return ticTacToeTheme?.textColors.primary;
    }

    if (disabled) {
      return ticTacToeTheme?.neutralColors.grey;
    }

    switch (color) {
      case AppButtonColors.red:
      case AppButtonColors.blue:
        return ticTacToeTheme?.neutralColors.white;
      case AppButtonColors.standard:
        return ticTacToeTheme?.textColors.primary;
    }
  }
}
