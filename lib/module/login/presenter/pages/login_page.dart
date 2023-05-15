import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/modules/theme/presenter/cubits/theme_cubit.dart';
import 'package:tic_tac_toe_app/module/app_icons_assets.dart';
import 'package:tic_tac_toe_app/widgets/button/button.dart';
import 'package:tic_tac_toe_app/widgets/text_typography/text_typography.dart';
import 'package:tic_tac_toe_app/widgets/text_typography/text_typography_type.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    required this.themeCubit,
    super.key,
  });

  final ThemeCubit themeCubit;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 140.0.h,
                      width: 124.0.w,
                      child: Image.asset('assets/images/logo_dark.png'),
                    ),
                    SizedBox(height: 36.0.h),
                    const TextTypography(
                      'Welcome',
                      type: TextTypographyType.header2,
                    ),
                    SizedBox(height: 6.0.h),
                    const TextTypography.secondary(
                      'Please sign in to continue.',
                      type: TextTypographyType.subtitle2,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0.w,
              ),
              child: const Button(
                'Sign in with Google',
                icon: AppIconsAssets.google,
                color: ButtonColors.blue,
                darkMode: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0.w,
                vertical: 20.0.h,
              ),
              child: const Button(
                'Sign in with Facebook',
                icon: AppIconsAssets.facebook,
                color: ButtonColors.red,
                darkMode: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
