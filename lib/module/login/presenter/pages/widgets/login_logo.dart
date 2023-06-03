import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/app_images_assets.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    required this.themeCubit,
    super.key,
  });

  final ThemeCubit themeCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      buildWhen: (previous, current) => previous != current,
      bloc: themeCubit,
      builder: (context, state) {
        return SizedBox(
          height: 140.0.h,
          width: 124.0.w,
          child: Image.asset(
            themeCubit.isDarkMode
                ? AppImagesAssets.logo
                : AppImagesAssets.logoDark,
          ),
        );
      },
    );
  }
}
