import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/usecases.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  GetOnboardingViewedUseCase getOnboardingViewedUseCase;

  OnboardingCubit({required this.getOnboardingViewedUseCase})
      : super(const OnboardUnviewedState());

  void getOnboardingViewed() async {
    emit(const OnboardLoadingState());

    var result = await getOnboardingViewedUseCase();

    result.fold((error) {
      debugPrint(error.toString());
    }, (viewed) {
      if (viewed) {
        emit(const OnboardViewedState());
      } else {
        emit(const OnboardUnviewedState());
      }
    });
  }

  void updateViewedState() {
    emit(const OnboardViewedState());
  }
}
