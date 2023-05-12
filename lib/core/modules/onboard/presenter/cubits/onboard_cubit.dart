import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/usecases.dart';
import 'onboard_state.dart';

class OnboardCubit extends Cubit<OnboardState> {
  final GetOnboardViewedUseCase _getOnboardViewedUseCase;
  final UpdateOnboardViewedUseCase _updateOnboardViewedUseCase;

  OnboardCubit({
    required GetOnboardViewedUseCase getOnboardViewedUseCase,
    required UpdateOnboardViewedUseCase updateOnboardViewedUseCase,
  })  : _updateOnboardViewedUseCase = updateOnboardViewedUseCase,
        _getOnboardViewedUseCase = getOnboardViewedUseCase,
        super(const OnboardUnviewedState());

  void getOnboardingViewed() async {
    emit(const OnboardLoadingState());

    var result = await _getOnboardViewedUseCase();

    result.fold((_) => emit(const OnboardFailureState()), (viewed) {
      if (viewed) {
        emit(const OnboardViewedState());
      } else {
        emit(const OnboardUnviewedState());
      }
    });
  }

  void updateOnboardViewedState() async {
    emit(const OnboardLoadingState());

    final result = await _updateOnboardViewedUseCase(true);

    result.fold(
      (_) => emit(const OnboardFailureState()),
      (_) => emit(const OnboardViewedState()),
    );
  }
}
