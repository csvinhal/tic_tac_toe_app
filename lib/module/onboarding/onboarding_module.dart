import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/module/onboarding/presenter/presenter.dart';

class OnboardingModule extends Module {
  @override
  final List<Bind<Object>> binds = [Bind.singleton((i) => OnboardingCubit())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute<dynamic>(
      '/',
      child: (_, __) => OnboardingView(
        onboardingCubit: Modular.get(),
        onboardCubit: Modular.get(),
      ),
    ),
  ];
}
