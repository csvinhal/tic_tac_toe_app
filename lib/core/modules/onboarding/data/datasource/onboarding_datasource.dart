import '../../../../shared/services/local_storage_service.dart';

abstract class OnboardingDatasource {
  Future<dynamic> getIsOnboardingViewed();
}

class OnboardingDatasourceImpl implements OnboardingDatasource {
  final LocalStorageService _localStorageService;
  final onboardingViewed = 'is_onboarding_viewd';

  const OnboardingDatasourceImpl(this._localStorageService);

  @override
  Future<dynamic> getIsOnboardingViewed() async {
    return _localStorageService.get(onboardingViewed);
  }
}
