import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';

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
                icon: themeCubit.isDarkMode
                    ? ImageAssetValue.googleDark
                    : ImageAssetValue.google,
                excludeIconFromSemantics: true,
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/login/prepare');
                },
              ),
              SizedBox(height: 20.0.h),
              AppButton(
                AppLocalizations.of(context).loginSignInPageSignInFacebook,
                icon: themeCubit.isDarkMode
                    ? ImageAssetValue.facebookDark
                    : ImageAssetValue.facebook,
                excludeIconFromSemantics: true,
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/login/prepare');
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
