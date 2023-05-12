import 'package:dartz/dartz.dart';

import '../../../../shared/services/local_storage_service.dart';

abstract class OnboardDatasource {
  Future<dynamic> getIsOnboardViewed();

  Future<void> putIsOnboardViewed(bool isViewed);
}

class OnboardDatasourceImpl implements OnboardDatasource {
  final LocalStorageService _localStorageService;
  final onboardingViewed = 'is_onboard_viewed';

  const OnboardDatasourceImpl(this._localStorageService);

  @override
  Future<dynamic> getIsOnboardViewed() async {
    return _localStorageService.get(onboardingViewed);
  }

  @override
  Future<void> putIsOnboardViewed(bool isViewed) {
    return _localStorageService.put(onboardingViewed, isViewed);
  }
}
