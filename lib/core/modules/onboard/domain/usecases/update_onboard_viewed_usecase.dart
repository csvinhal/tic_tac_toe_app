import 'package:dartz/dartz.dart';

import '../repositories/onboard_repository.dart';

abstract class UpdateOnboardViewedUseCase {
  Future<Either<Exception, void>> call(bool isViewed);
}

class UpdateOnboardViewedImplUseCase implements UpdateOnboardViewedUseCase {
  final OnboardRepository _onboardRepository;

  const UpdateOnboardViewedImplUseCase(this._onboardRepository);

  @override
  Future<Either<Exception, void>> call(bool isViewed) {
    return _onboardRepository.putIsOnboardViewed(isViewed);
  }
}
