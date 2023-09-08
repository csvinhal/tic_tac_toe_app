import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/onboard.dart';
import 'package:tic_tac_toe_app/core/modules/theme/theme.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    ThemeModule().exportedBinds(i);
    OnboardModule().exportedBinds(i);
  }
}
