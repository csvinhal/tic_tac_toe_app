import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/services/local_storage_service.dart';
import 'data/datasource/onboard_datasource.dart';
import 'data/repositories/onboard_repository_impl.dart';
import 'domain/usecases/get_onboard_viewed_usecase.dart';
import 'presenter/presentar.dart';

class OnboardModule extends Module {
  @override
  final List<Bind<Object>> binds = [
    Bind.singleton(
      (i) => LocalStorageServiceImpl(),
      export: true,
    ),
    Bind.singleton(
      (i) => OnboardDatasourceImpl(i.get()),
      export: true,
    ),
    Bind.singleton(
      (i) => OnboardRepositoryImpl(i.get()),
      export: true,
    ),
    Bind.singleton(
      (i) => GetOnboardViewedUseCaseImpl(i.get()),
      export: true,
    ),
    Bind.singleton(
      (i) => OnboardCubit(getOnboardViewedUseCase: i.get()),
      export: true,
    ),
  ];
}
