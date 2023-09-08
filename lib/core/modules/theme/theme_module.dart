import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/core/modules/theme/theme.dart';

class ThemeModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addSingleton<ThemeCubit>(ThemeCubit.new);
  }
}
