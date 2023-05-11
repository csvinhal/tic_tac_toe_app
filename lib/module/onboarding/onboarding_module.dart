import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/onboarding_page.dart';

class OnboardingModule extends Module {
  @override
  final List<Bind<Object>> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const OnboardingPage()),
  ];
}
