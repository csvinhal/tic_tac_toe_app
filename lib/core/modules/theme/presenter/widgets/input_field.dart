import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/app_icons_assets.dart';

enum InputFieldType {
  search,
  datePicker;
}

class InputField extends StatefulWidget {
  const InputField({
    required this.label,
    required this.type,
    super.key,
  });

  final String label;
  final InputFieldType type;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  InputFieldThemeData? themeStyleOf(BuildContext context) {
    return InputFieldTheme.of(context);
  }

  InputFieldThemeData defaultStyleOf() {
    return InputFieldThemeData.fallback();
  }

  AppTypographyThemeData? typographyThemeStyleOf(BuildContext context) {
    return AppTypographyTheme.of(context);
  }

  AppTypographyThemeData typographyDefaultStyleOf() {
    return AppTypographyThemeData.fallback();
  }

  @override
  Widget build(BuildContext context) {
    final themeStyle = themeStyleOf(context);
    final defaultStyle = defaultStyleOf();
    final themeData = themeStyle ?? defaultStyle;

    final typographyThemeStyle = typographyThemeStyleOf(context);
    final typographyDefaultStyle = typographyDefaultStyleOf();
    final typographyData = typographyThemeStyle ?? typographyDefaultStyle;

    final textTheme = Theme.of(context).textTheme;

    return TextField(
      cursorColor: Colors.black,
      style: textTheme.bodyLarge!.copyWith(
        color: typographyData.primaryColor,
      ),
      decoration: InputDecoration(
        prefixIcon: Image.asset(AppIconsAssets.search),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
        ),
        label: AppTypography.secondary(widget.label),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: themeData.enabledBorder!,
            width: 1.w,
          ),
          borderRadius: BorderRadius.zero,
        ),
        hintStyle: textTheme.bodyLarge!.copyWith(
          color: typographyData.secondaryColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: themeData.focusedBorder!,
            width: 1.w,
          ),
          borderRadius: BorderRadius.zero,
        ),
      ),
    );
  }
}
