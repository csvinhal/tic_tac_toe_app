import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/module/splash/presenter/pages/splash_screen.dart';

class SplashModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute<dynamic>(
      '/',
      child: (_, __) => SplashScreen(
        onboardingCubit: Modular.get(),
        themeCubit: Modular.get(),
      ),
    ),
  ];
}
