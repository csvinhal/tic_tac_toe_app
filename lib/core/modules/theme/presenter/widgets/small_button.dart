import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    required this.buttonState,
    this.onPressed,
    super.key,
  });

  final SmallButtonStateType buttonState;
  final VoidCallback? onPressed;

  SmallButtonThemeData? themeStyleOf(BuildContext context) {
    return SmallButtonTheme.of(context);
  }

  SmallButtonThemeData defaultStyleOf() {
    return SmallButtonThemeData.fallback();
  }

  @override
  Widget build(BuildContext context) {
    final themeStyle = themeStyleOf(context);
    final defaultStyle = defaultStyleOf();
    final themeData = themeStyle ?? defaultStyle;

    final borderRadius = BorderRadius.circular(4.0.r);
    final backgroundColor = _getBackgroundColor(themeData);
    final borderColor = _getBorderColor(themeData);
    final textColor = _getTextColor(themeData);
    final label = _getLabel(context);

    return Material(
      color: backgroundColor,
      clipBehavior: Clip.antiAlias,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: buttonState == SmallButtonStateType.inactive ? null : onPressed,
        child: Container(
          height: 26.h,
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor!,
              width: 1.0.w,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Center(
            child: AppTypography(
              label,
              color: textColor,
              type: AppTypographyType.body2,
            ),
          ),
        ),
      ),
    );
  }

  String _getLabel(BuildContext context) {
    switch (buttonState) {
      case SmallButtonStateType.active:
      case SmallButtonStateType.inactive:
        return AppLocalizations.of(context).themeSmallButtonInvite;
      case SmallButtonStateType.pending:
        return AppLocalizations.of(context).themeSmallButtonPending;
      case SmallButtonStateType.accepted:
        return AppLocalizations.of(context).themeSmallButtonAccepted;
      case SmallButtonStateType.denied:
        return AppLocalizations.of(context).themeSmallButtonDenied;
    }
  }

  Color? _getBackgroundColor(SmallButtonThemeData themeData) {
    switch (buttonState) {
      case SmallButtonStateType.active:
        return themeData.activeColor;
      case SmallButtonStateType.inactive:
        return themeData.inactiveColor;
      case SmallButtonStateType.pending:
        return themeData.pendingColor;
      case SmallButtonStateType.accepted:
        return themeData.acceptedColor;
      case SmallButtonStateType.denied:
        return themeData.deniedColor;
    }
  }

  Color? _getBorderColor(SmallButtonThemeData themeData) {
    switch (buttonState) {
      case SmallButtonStateType.active:
        return themeData.activeBorderColor;
      case SmallButtonStateType.inactive:
        return themeData.inactiveBorderColor;
      case SmallButtonStateType.pending:
        return themeData.pendingBorderColor;
      case SmallButtonStateType.accepted:
        return themeData.acceptedBorderColor;
      case SmallButtonStateType.denied:
        return themeData.deniedBorderColor;
    }
  }

  Color? _getTextColor(SmallButtonThemeData themeData) {
    switch (buttonState) {
      case SmallButtonStateType.active:
        return themeData.activeTextColor;
      case SmallButtonStateType.inactive:
        return themeData.inactiveTextColor;
      case SmallButtonStateType.pending:
        return themeData.pendingTextColor;
      case SmallButtonStateType.accepted:
        return themeData.acceptedTextColor;
      case SmallButtonStateType.denied:
        return themeData.deniedTextColor;
    }
  }
}
