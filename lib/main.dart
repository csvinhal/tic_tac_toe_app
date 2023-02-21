import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../notifiers/dark_theme_provider.dart';
import 'utils/app_theme.dart';
import 'widgets/text_typography/text_typography.dart';

void main() {
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
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp(
        title: 'Tic Tac Toe',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: context.watch<DarkThemeProvider>().darkTheme
            ? ThemeMode.dark
            : ThemeMode.light,
        home: const MyHomePage(title: 'Tic Tac Toe'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextTypography('∏'),
              Text(
                "Header",
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 40.0.w,
              )
            ],
          ),
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
}
