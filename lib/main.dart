import 'dart:io';

import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/widgets/step_footer/step_footer.dart';

import '../notifiers/dark_theme_provider.dart';

class _HttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          ((X509Certificate cert, String host, int port) {
        return true;
      });
  }
}

void main() {
  HttpOverrides.global = _HttpOverrides();
  runApp(
    ChangeNotifierProvider(
      create: (_) => DarkThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = context.watch<DarkThemeProvider>().darkTheme;
    return ThemeBuilder(builder: (context, theme, darkTheme) {
      return MaterialApp(
        title: 'Tic Tac Toe',
        theme: theme,
        darkTheme: darkTheme,
        themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
        home: MyHomePage(
          isDarkMode: isDarkMode,
          title: 'Tic Tac Toe',
        ),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  final bool isDarkMode;

  const MyHomePage({
    required this.isDarkMode,
    required this.title,
    super.key,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  void getCurrentAppThemeFromPreferences() async {
    context.read<DarkThemeProvider>().darkTheme =
        await context.watch<DarkThemeProvider>().preferences.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    bool currentTheme = context.watch<DarkThemeProvider>().darkTheme;
    final NeutralColors myColors =
        Theme.of(context).extension<NeutralColors>()!;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StepFooter(
              isDarkMode: isDarkMode,
              initStep: 0,
              onPrevious: () {},
              onNext: () {},
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () =>
            context.read<DarkThemeProvider>().darkTheme = !currentTheme,
        child: Icon(Icons.sunny_snowing),
      ),
    );
  }

  bool get isDarkMode => widget.isDarkMode;
}
