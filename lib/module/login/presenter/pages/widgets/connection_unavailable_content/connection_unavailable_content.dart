import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/modules/theme/presenter/cubits/theme_cubit.dart';
import 'package:tic_tac_toe_app/module/app_icons_assets.dart';
import 'package:tic_tac_toe_app/module/widgets/widgets.dart';

class ConnectionUnavailableContent extends StatelessWidget {
  const ConnectionUnavailableContent({
    required this.text,
    required this.themeCubit,
    required this.onTap,
    super.key,
  });

  final String text;
  final VoidCallback onTap;
  final ThemeCubit themeCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      bloc: themeCubit,
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: Center(
                child: AppTypography(text),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24.w, 0, 24.h, 24.w),
              child: AppButton(
                AppLocalizations.of(context).loginPreparingPageTryAgain,
                icon: themeCubit.isDarkMode
                    ? AppIconsAssets.retryDark
                    : AppIconsAssets.retry,
                darkMode: themeCubit.isDarkMode,
                onTap: onTap,
              ),
            )
          ],
        );
      },
    );
  }
}
