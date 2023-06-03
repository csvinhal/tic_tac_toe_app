import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/login/presenter/pages/widgets/button_container/button_container.dart';
import 'package:tic_tac_toe_app/module/login/presenter/pages/widgets/widgets.dart';

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
                    AppTypography(
                      AppLocalizations.of(context).loginSignInPageWelcome,
                      type: AppTypographyType.header2,
                    ),
                    SizedBox(height: 6.0.h),
                    AppTypography.secondary(
                      AppLocalizations.of(context).loginSignInPagePleaseSignIn,
                      type: AppTypographyType.subtitle2,
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
