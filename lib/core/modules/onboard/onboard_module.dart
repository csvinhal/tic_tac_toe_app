import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/data/datasource/onboard_datasource.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/data/repositories/onboard_repository_impl.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/domain/usecases/get_onboard_viewed_usecase.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/domain/usecases/update_onboard_viewed_usecase.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/presenter/cubits/onboard_cubit.dart';
import 'package:tic_tac_toe_app/core/shared/services/local_storage_service.dart';

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
      (i) => UpdateOnboardViewedImplUseCase(i.get()),
      export: true,
    ),
    Bind.singleton(
      (i) => OnboardCubit(
        getOnboardViewedUseCase: i.get(),
        updateOnboardViewedUseCase: i.get(),
      ),
      export: true,
    ),
  ];
}
