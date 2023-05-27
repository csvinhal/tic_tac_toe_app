import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/domain/domain.dart';
import 'package:tic_tac_toe_app/core/modules/onboard/presenter/cubit/cubit.dart';

class OnboardCubit extends Cubit<OnboardState> {
  OnboardCubit({
    required GetOnboardViewedUseCase getOnboardViewedUseCase,
    required UpdateOnboardViewedUseCase updateOnboardViewedUseCase,
  })  : _updateOnboardViewedUseCase = updateOnboardViewedUseCase,
        _getOnboardViewedUseCase = getOnboardViewedUseCase,
        super(const OnboardUnviewedState());

  final GetOnboardViewedUseCase _getOnboardViewedUseCase;
  final UpdateOnboardViewedUseCase _updateOnboardViewedUseCase;

  Future<void> getOnboardingViewed() async {
    emit(const OnboardLoadingState());

    final result = await _getOnboardViewedUseCase();

    result.fold((_) => emit(const OnboardFailureState()), (viewed) {
      if (viewed) {
        emit(const OnboardViewedState());
      } else {
        emit(const OnboardUnviewedState());
      }
    });
  }

  Future<void> updateOnboardViewedState() async {
    emit(const OnboardLoadingState());

    final result = await _updateOnboardViewedUseCase(isViewed: true);

    result.fold(
      (_) => emit(const OnboardFailureState()),
      (_) => emit(const OnboardViewedState()),
    );
  }
}
