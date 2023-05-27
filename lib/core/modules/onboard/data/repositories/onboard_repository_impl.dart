import 'package:dartz/dartz.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/data/data.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/domain/domain.dart';

class OnboardRepositoryImpl implements OnboardRepository {
  const OnboardRepositoryImpl(this._onboardDatasource);

  final OnboardDatasource _onboardDatasource;

  @override
  Future<Either<Exception, bool>> getIsOnboardViewed() async {
    try {
      final isOnboardViewed = await _onboardDatasource.getIsOnboardViewed();
      return Right(isOnboardViewed);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, void>> putIsOnboardViewed({
    required bool isViewed,
  }) async {
    try {
      await _onboardDatasource.putIsOnboardViewed(isViewed: isViewed);
      return const Right(null);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
