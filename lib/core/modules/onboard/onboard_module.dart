import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/data/data.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/domain/domain.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/presenter/cubit/onboard_cubit.dart';
import 'package:tic_tac_toe_app/core/shared/services/local_storage_service.dart';

class OnboardModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i
      ..addSingleton<LocalStorageService>(LocalStorageServiceImpl.new)
      ..addSingleton<OnboardDatasource>(OnboardDatasourceImpl.new)
      ..addSingleton<OnboardRepository>(OnboardRepositoryImpl.new)
      ..addSingleton<GetOnboardViewedUseCase>(GetOnboardViewedUseCaseImpl.new)
      ..addSingleton<UpdateOnboardViewedUseCase>(
        UpdateOnboardViewedImplUseCase.new,
      )
      ..addSingleton<OnboardCubit>(OnboardCubit.new);
  }
}
