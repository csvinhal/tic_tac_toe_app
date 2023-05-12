import 'package:tic_tac_toe_app/core/shared/services/local_storage_service.dart';

abstract class OnboardDatasource {
  Future<bool> getIsOnboardViewed();

  Future<void> putIsOnboardViewed({required bool isViewed});
}

class OnboardDatasourceImpl implements OnboardDatasource {
  const OnboardDatasourceImpl(this._localStorageService);
  final LocalStorageService _localStorageService;
  String get onboardingViewed => 'is_onboard_viewed';

  @override
  Future<bool> getIsOnboardViewed() async {
    final result = await _localStorageService.get(onboardingViewed);

    if (result == null) return false;
    return result as bool;
  }

  @override
  Future<void> putIsOnboardViewed({required bool isViewed}) {
    return _localStorageService.put(onboardingViewed, isViewed);
  }
}
