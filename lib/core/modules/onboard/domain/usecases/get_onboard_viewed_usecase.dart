import 'package:dartz/dartz.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/domain/domain.dart';

abstract class GetOnboardViewedUseCase {
  Future<Either<Exception, bool>> call();
}

class GetOnboardViewedUseCaseImpl implements GetOnboardViewedUseCase {
  const GetOnboardViewedUseCaseImpl(this._onboardRepository);

  final OnboardRepository _onboardRepository;

  @override
  Future<Either<Exception, bool>> call() {
    return _onboardRepository.getIsOnboardViewed();
  }
}
