import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/cubit/onboarding_cubit.dart';
import 'presenter/pages/onboarding_page.dart';

class OnboardingModule extends Module {
  @override
  final List<Bind<Object>> binds = [Bind.singleton((i) => OnboardingCubit())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => OnboardingPage(
        onboardingCubit: Modular.get(),
        onboardCubit: Modular.get(),
      ),
    ),
  ];
}
