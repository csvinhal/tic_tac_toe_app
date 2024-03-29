import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = Modular.get<ThemeCubit>();

    return BlocBuilder<ThemeCubit, ThemeMode>(
      bloc: themeCubit,
      builder: (_, themeMode) {
        return ThemeBuilder(
          builder: (context, theme, darkTheme) {
            return MaterialApp.router(
              routerConfig: Modular.routerConfig,
              debugShowCheckedModeBanner: false,
              onGenerateTitle: (context) {
                return AppLocalizations.of(context).appTitle;
              },
              themeMode: themeMode,
              theme: theme,
              darkTheme: darkTheme,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
                Locale.fromSubtags(
                  languageCode: 'pt',
                  countryCode: 'BR',
                ),
              ],
            );
          },
        );
      },
    );
  }
}
