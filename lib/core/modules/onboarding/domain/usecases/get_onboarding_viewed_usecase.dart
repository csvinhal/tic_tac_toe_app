import 'package:dartz/dartz.dart';

import '../repositories/onboarding_repository.dart';

abstract class GetOnboardingViewedUseCase {
  Future<Either<Exception, bool>> call();
}

class GetOnboardingViewedUseCaseImpl implements GetOnboardingViewedUseCase {
  final OnboardingRepository _onboardingRepository;
  const GetOnboardingViewedUseCaseImpl(this._onboardingRepository);

  @override
  Future<Either<Exception, bool>> call() {
    return _onboardingRepository.getIsOnboardingViewed();
  }
}
