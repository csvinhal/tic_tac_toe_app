import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/onboard.dart';
import 'package:tic_tac_toe_app/core/modules/theme/theme_module.dart';

class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    ...ThemeModule().binds,
    ...OnboardModule().binds,
  ];
}
