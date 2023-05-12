import 'package:dartz/dartz.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/domain/repositories/onboard_repository.dart';

abstract class UpdateOnboardViewedUseCase {
  Future<Either<Exception, void>> call({required bool isViewed});
}

class UpdateOnboardViewedImplUseCase implements UpdateOnboardViewedUseCase {
  const UpdateOnboardViewedImplUseCase(this._onboardRepository);

  final OnboardRepository _onboardRepository;

  @override
  Future<Either<Exception, void>> call({required bool isViewed}) {
    return _onboardRepository.putIsOnboardViewed(isViewed: isViewed);
  }
}
