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
    final neutralColors = Theme.of(context).extension<NeutralColors>();
    final styleColor = Theme.of(context).extension<StyleColors>();

    if (darkMode) {
      if (disabled) {
        return neutralColors?.darkerGrey ?? const Color(0xFF575757);
      }

      switch (color) {
        case AppButtonColors.blue:
          return styleColor?.blue ?? const Color(0xFF46A3FF);
        case AppButtonColors.red:
          return styleColor?.red ?? const Color(0xFFFF827E);
        case AppButtonColors.standard:
          return styleColor?.darkBlue ?? const Color(0xFF212835);
      }
    }

    switch (color) {
      case AppButtonColors.blue:
        return styleColor?.blue ?? const Color(0xFF225577);
      case AppButtonColors.red:
        return styleColor?.red ?? const Color(0xFFE45651);
      case AppButtonColors.standard:
        return neutralColors?.lightGrey ?? const Color(0xFFE3E3E3);
    }
  }

  Color? _getDefaultColor(BuildContext context) {
    if (darkMode) {
      return _getDarkDefaultColor(context);
    }
    return _getLightDefaultColor(context);
  }

  Color? _getDarkDefaultColor(BuildContext context) {
    final neutralColors = Theme.of(context).extension<NeutralColors>();
    final styleColors = Theme.of(context).extension<StyleColors>();

    if (disabled) {
      return neutralColors?.darkerGrey;
    }

    switch (color) {
      case AppButtonColors.red:
        return styleColors?.red;
      case AppButtonColors.blue:
        return styleColors?.blue;
      case AppButtonColors.standard:
        return styleColors?.dark;
    }
  }

  Color? _getLightDefaultColor(BuildContext context) {
    final neutralColors = Theme.of(context).extension<NeutralColors>();
    final styleColors = Theme.of(context).extension<StyleColors>();

    if (disabled) {
      return neutralColors?.lightGrey;
    }

    switch (color) {
      case AppButtonColors.red:
        return styleColors?.red;
      case AppButtonColors.blue:
        return styleColors?.blue;
      case AppButtonColors.standard:
        return neutralColors?.white;
    }
  }

  Color? _getTextColor(BuildContext context) {
    final neutralColors = Theme.of(context).extension<NeutralColors>();
    final textColors = Theme.of(context).extension<TextColors>();

    if (darkMode) {
      if (disabled) {
        return neutralColors?.darkestGrey;
      }

      return textColors?.primary;
    }

    if (disabled) {
      return neutralColors?.grey;
    }

    switch (color) {
      case AppButtonColors.red:
      case AppButtonColors.blue:
        return neutralColors?.white;
      case AppButtonColors.standard:
        return textColors?.primary;
    }
  }
}
