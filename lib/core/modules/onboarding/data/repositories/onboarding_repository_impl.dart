import 'package:dartz/dartz.dart';

import '../../domain/repositories/onboarding_repository.dart';
import '../datasource/onboarding_datasource.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingDatasource _onboardingDatasource;

  const OnboardingRepositoryImpl(this._onboardingDatasource);

  @override
  Future<Either<Exception, bool>> getIsOnboardingViewed() async {
    try {
      final isOnboardingViewed =
          await _onboardingDatasource.getIsOnboardingViewed();
      return Right(isOnboardingViewed ?? false);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
