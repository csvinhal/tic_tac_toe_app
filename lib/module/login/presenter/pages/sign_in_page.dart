import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/modules/theme/presenter/cubits/theme_cubit.dart';
import 'package:tic_tac_toe_app/module/login/presenter/pages/widgets/button_container/button_container.dart';
import 'package:tic_tac_toe_app/module/login/presenter/pages/widgets/login_logo.dart';
import 'package:tic_tac_toe_app/module/widgets/text_typography/text_typography.dart';
import 'package:tic_tac_toe_app/module/widgets/text_typography/text_typography_type.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({
    required this.themeCubit,
    super.key,
  });

  final ThemeCubit themeCubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginLogo(themeCubit: themeCubit),
                    SizedBox(height: 36.0.h),
                    TextTypography(
                      AppLocalizations.of(context).loginSignInPageWelcome,
                      type: TextTypographyType.header2,
                    ),
                    SizedBox(height: 6.0.h),
                    TextTypography.secondary(
                      AppLocalizations.of(context).loginSignInPagePleaseSignIn,
                      type: TextTypographyType.subtitle2,
                    ),
                  ],
                ),
              ),
            ),
            ButtonContainer(themeCubit: themeCubit),
          ],
        ),
      ),
    );
  }
}
