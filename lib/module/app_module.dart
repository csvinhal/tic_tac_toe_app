import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/core/core.module.dart';
import 'package:tic_tac_toe_app/module/home/home.module.dart';
import 'package:tic_tac_toe_app/module/login/login_module.dart';
import 'package:tic_tac_toe_app/module/onboarding/onboarding_module.dart';
import 'package:tic_tac_toe_app/module/splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
    CoreModule(),
  ];

  @override
  void routes(RouteManager r) {
    r
      ..module('/', module: SplashModule())
      ..module('/home', module: HomeModule())
      ..module('/onboarding', module: OnboardingModule())
      ..module('/login', module: LoginModule());
  }
}
