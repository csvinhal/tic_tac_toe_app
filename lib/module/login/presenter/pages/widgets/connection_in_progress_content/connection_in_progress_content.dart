import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/login/presenter/pages/widgets/loading_progress.dart';

class ConnectionInProgress extends StatelessWidget {
  const ConnectionInProgress({
    required this.text,
    required this.progress,
    required this.themeCubit,
    super.key,
  });

  final double progress;
  final String text;
  final ThemeCubit themeCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      bloc: themeCubit,
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: LoadingProgress(
                progress: progress,
                darkMode: themeCubit.isDarkMode,
                text: text,
              ),
            ),
          ],
        );
      },
    );
  }
}
