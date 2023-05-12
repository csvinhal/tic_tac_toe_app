import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/core/modules/theme/presenter/cubits/theme_cubit.dart';

class ThemeModule extends Module {
  @override
  final List<Bind<Object>> binds = [
    Bind.singleton((i) => ThemeCubit(), export: true),
  ];
}
