import 'package:dartz/dartz.dart';

abstract class OnboardRepository {
  Future<Either<Exception, bool>> getIsOnboardViewed();
  Future<Either<Exception, void>> putIsOnboardViewed({required bool isViewed});
}
