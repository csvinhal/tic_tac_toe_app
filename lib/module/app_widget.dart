import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../core/modules/onboarding/presenter/cubits/onboarding_cubit.dart';
import '../core/modules/theme/presenter/cubits/theme_cubit.dart';
import '../core/modules/theme/presenter/theme_builder.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = Modular.get<ThemeCubit>();
    final onboardingCubit = Modular.get<OnboardingCubit>();

    debugPrint(onboardingCubit.toString());

    return BlocBuilder<ThemeCubit, ThemeMode>(
      bloc: themeCubit,
      builder: (_, themeMode) {
        return ThemeBuilder(
          builder: (context, theme, darkTheme) {
            return MaterialApp.router(
              routeInformationParser: Modular.routeInformationParser,
              routerDelegate: Modular.routerDelegate,
              debugShowCheckedModeBanner: false,
              title: 'Tic Tac Toe',
              themeMode: themeMode,
              theme: theme,
              darkTheme: darkTheme,
            );
          },
        );
      },
    );
  }
}
