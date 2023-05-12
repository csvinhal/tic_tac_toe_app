import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/widgets/button/button.dart';
import 'package:tic_tac_toe_app/widgets/text_typography/text_typography.dart';
import 'package:tic_tac_toe_app/widgets/text_typography/text_typography_type.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: SizedBox(
                      height: 140.0.h,
                      width: 124.0.w,
                      child: Image.asset('assets/images/logo_dark.png'),
                    ),
                  ),
                  SizedBox(height: 36.0.h),
                  const TextTypography(
                    'Welcome',
                    isDarkMode: false,
                    type: TextTypographyType.header2,
                  ),
                  SizedBox(height: 6.0.h),
                  const TextTypography.secondary(
                    'Please sign in to continue.',
                    isDarkMode: false,
                    type: TextTypographyType.subtitle2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0.w,
              ),
              // child: Button(
              //   'Sign in with Google',
              // ),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                ),
                child: const TextTypography(
                  'Sign in with Google',
                  isDarkMode: false,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0.w,
                vertical: 20.0.h,
              ),
              child: const Button(
                'Sign in with Facebook',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
