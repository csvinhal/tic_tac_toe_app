import 'package:dartz/dartz.dart';

abstract class OnboardingRepository {
  Future<Either<Exception, bool>> getIsOnboardingViewed();
}
