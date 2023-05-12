import 'package:dartz/dartz.dart';

import '../repositories/onboard_repository.dart';

abstract class GetOnboardViewedUseCase {
  Future<Either<Exception, bool>> call();
}

class GetOnboardViewedUseCaseImpl implements GetOnboardViewedUseCase {
  final OnboardRepository _onboardRepository;
  const GetOnboardViewedUseCaseImpl(this._onboardRepository);

  @override
  Future<Either<Exception, bool>> call() {
    return _onboardRepository.getIsOnboardViewed();
  }
}
