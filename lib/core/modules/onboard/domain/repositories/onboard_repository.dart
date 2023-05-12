import 'package:dartz/dartz.dart';

abstract class OnboardRepository {
  Future<Either<Exception, bool>> getIsOnboardViewed();
}
