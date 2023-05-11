import 'package:flutter_modular/flutter_modular.dart';

import 'modules/onboarding/onboarding_module.dart';
import 'modules/theme/theme_module.dart';

class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    ...ThemeModule().binds,
    ...OnboardingModule().binds,
  ];
}
