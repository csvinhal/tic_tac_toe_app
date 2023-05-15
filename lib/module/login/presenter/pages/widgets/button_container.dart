import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/modules/theme/presenter/cubits/theme_cubit.dart';
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
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.fromLTRB(20.0.w, 0, 20.0.w, 20.0.h),
          child: Column(
            children: [
              AppButton(
                'Sign in with Google',
                icon: AppIconsAssets.google,
                darkMode: themeCubit.isDarkMode,
              ),
              SizedBox(height: 20.0.h),
              AppButton(
                'Sign in with Facebook',
                icon: AppIconsAssets.facebook,
                darkMode: themeCubit.isDarkMode,
              )
            ],
          ),
        );
      },
    );
  }
}
