import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/usecases.dart';
import 'onboard_state.dart';

class OnboardCubit extends Cubit<OnboardState> {
  GetOnboardViewedUseCase getOnboardViewedUseCase;

  OnboardCubit({required this.getOnboardViewedUseCase})
      : super(const OnboardUnviewedState());

  void getOnboardingViewed() async {
    emit(const OnboardLoadingState());

    var result = await getOnboardViewedUseCase();

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
