import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/core/core.module.dart';
import 'package:tic_tac_toe_app/module/home/home.module.dart';
import 'package:tic_tac_toe_app/module/login/login_module.dart';
import 'package:tic_tac_toe_app/module/onboarding/onboarding_module.dart';
import 'package:tic_tac_toe_app/module/splash/splash_module.dart';

class AppModule extends Module {
  @override
  final List<Module> imports = [CoreModule()];

  @override
  final List<Bind<Object>> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute<dynamic>('/', module: SplashModule()),
    ModuleRoute<dynamic>('/home', module: HomeModule()),
    ModuleRoute<dynamic>('/onboarding', module: OnboardingModule()),
    ModuleRoute<dynamic>('/login', module: LoginModule()),
  ];
}
