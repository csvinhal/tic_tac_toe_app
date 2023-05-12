import 'package:flutter_modular/flutter_modular.dart';

import '../core/core.module.dart';
import 'home/home.module.dart';
import 'login/login_module.dart';
import 'onboarding/onboarding_module.dart';
import 'splash/splash_module.dart';

class AppModule extends Module {
  @override
  final List<Module> imports = [CoreModule()];

  @override
  final List<Bind<Object>> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: SplashModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/onboarding', module: OnboardingModule()),
    ModuleRoute('/login', module: LoginModule()),
  ];
}
