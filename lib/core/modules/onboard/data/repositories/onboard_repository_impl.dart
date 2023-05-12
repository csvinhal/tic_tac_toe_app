import 'package:dartz/dartz.dart';

import '../../domain/repositories/onboard_repository.dart';
import '../datasource/onboard_datasource.dart';

class OnboardRepositoryImpl implements OnboardRepository {
  final OnboardDatasource _onboardDatasource;

  const OnboardRepositoryImpl(this._onboardDatasource);

  @override
  Future<Either<Exception, bool>> getIsOnboardViewed() async {
    try {
      final isOnboardViewed = await _onboardDatasource.getIsOnboardViewed();
      return Right(isOnboardViewed ?? false);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, void>> putIsOnboardViewed(bool isViewed) async {
    try {
      await _onboardDatasource.putIsOnboardViewed(isViewed);
      return const Right(null);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
