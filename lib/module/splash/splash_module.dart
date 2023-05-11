import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/splash_screen.dart';

class SplashModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => SplashScreen(
        onboardingCubit: Modular.get(),
        themeCubit: Modular.get(),
      ),
    ),
  ];
}
