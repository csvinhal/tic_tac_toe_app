import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_text_theme.dart';
import 'theme_extensions.dart';

class ThemeBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    ThemeData theme,
    ThemeData darkTheme,
  ) builder;

  const ThemeBuilder({
    required this.builder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        final theme = ThemeData.light().copyWith(
          scaffoldBackgroundColor: const Color(0xFFFFFFFF),
          colorScheme: const ColorScheme.dark().copyWith(
            background: const Color(0xFF0C1017),
          ),
          textTheme: AppTextTheme.textTheme,
          extensions: ThemeExtensions.lightExtensions,
        );
        final darTheme = ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xFF0C1017),
          colorScheme: const ColorScheme.dark().copyWith(
            background: const Color(0xFF0C1017),
          ),
          textTheme: AppTextTheme.textTheme,
          extensions: ThemeExtensions.darkExtensions,
        );

        return builder(context, theme, darTheme);
      },
    );
  }
}
