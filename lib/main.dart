import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../notifiers/dark_theme_provider.dart';
import '../utils/styles.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DarkThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Styles.themeData(
        context.watch<DarkThemeProvider>().darkTheme,
        context,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            context.read<DarkThemeProvider>().darkTheme = !currentTheme,
        child: Icon(Icons.sunny_snowing),
      ),
    );
  }
}
