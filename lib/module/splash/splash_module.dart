import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/module/splash/presenter/views/splash_view.dart';

class SplashModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => SplashView(
        onboardingCubit: Modular.get(),
        themeCubit: Modular.get(),
      ),
    );
  }
}
