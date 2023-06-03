import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.dark);

  Future<void> toggleTheme() async {
    final themeMode =
        state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    emit(themeMode);
  }

  bool get isDarkMode => ThemeMode.dark == state;
}
