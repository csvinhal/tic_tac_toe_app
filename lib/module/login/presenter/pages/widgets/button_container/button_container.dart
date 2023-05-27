import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/app_icons_assets.dart';
import 'package:tic_tac_toe_app/module/widgets/app_button/app_button.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({
    required this.themeCubit,
    super.key,
  });

  final ThemeCubit themeCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      bloc: themeCubit,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.fromLTRB(20.0.w, 0, 20.0.w, 20.0.h),
          child: Column(
            children: [
              AppButton(
                AppLocalizations.of(context).loginSignInPageSignInGoogle,
                icon: AppIconsAssets.google,
                darkMode: themeCubit.isDarkMode,
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/login/prepare');
                },
              ),
              SizedBox(height: 20.0.h),
              AppButton(
                AppLocalizations.of(context).loginSignInPageSignInFacebook,
                icon: AppIconsAssets.facebook,
                darkMode: themeCubit.isDarkMode,
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/login/prepare');
                },
              )
            ],
          ),
        );
      },
    );
  }
}
