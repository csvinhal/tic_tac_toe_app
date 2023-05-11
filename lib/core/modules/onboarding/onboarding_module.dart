import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/services/local_storage_service.dart';
import 'data/datasource/onboarding_datasource.dart';
import 'data/repositories/onboarding_repository_impl.dart';
import 'domain/usecases/get_onboarding_viewed_usecase.dart';
import 'presenter/cubits/onboarding_cubit.dart';

class OnboardingModule extends Module {
  @override
  final List<Bind<Object>> binds = [
    Bind.singleton(
      (i) => LocalStorageServiceImpl(),
      export: true,
    ),
    Bind.singleton(
      (i) => OnboardingDatasourceImpl(i.get()),
      export: true,
    ),
    Bind.singleton(
      (i) => OnboardingRepositoryImpl(i.get()),
      export: true,
    ),
    Bind.singleton(
      (i) => GetOnboardingViewedUseCaseImpl(i.get()),
      export: true,
    ),
    Bind.singleton(
      (i) => OnboardingCubit(getOnboardingViewedUseCase: i.get()),
      export: true,
    ),
  ];
}
