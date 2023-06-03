import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/modules/theme/presenter/app_dark_theme.dart';
import 'package:tic_tac_toe_app/core/modules/theme/presenter/app_light_theme.dart';

class ThemeBuilder extends StatelessWidget {
  const ThemeBuilder({
    required this.builder,
    super.key,
  });

  final Widget Function(
    BuildContext context,
    ThemeData theme,
    ThemeData darkTheme,
  ) builder;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return builder(context, appLightTheme, appDarkTheme);
      },
    );
  }
}
