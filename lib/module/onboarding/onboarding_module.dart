import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/module/onboarding/presenter/presenter.dart';

class OnboardingModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<OnboardingCubit>(OnboardingCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => OnboardingView(
        onboardingCubit: Modular.get(),
        onboardCubit: Modular.get(),
      ),
    );
  }
}
