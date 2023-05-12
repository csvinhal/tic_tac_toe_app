import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/module/onboarding/presenter/cubit/onboarding_cubit.dart';
import 'package:tic_tac_toe_app/module/onboarding/presenter/pages/onboarding_page.dart';

class OnboardingModule extends Module {
  @override
  final List<Bind<Object>> binds = [Bind.singleton((i) => OnboardingCubit())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute<dynamic>(
      '/',
      child: (_, __) => OnboardingPage(
        onboardingCubit: Modular.get(),
        onboardCubit: Modular.get(),
      ),
    ),
  ];
}
