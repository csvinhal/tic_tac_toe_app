import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/module/login/presenter/cubit/preparing_state.dart';

class PreparingCubit extends Cubit<PreparingState> {
  PreparingCubit()
      : super(const PreparingState(step: ConnectionStep.connecting));

  Future<void> onPrepare() async {
    emit(state.copyWith(step: ConnectionStep.connecting));

    final random = Random().nextInt(2);

    if (random == 0) {
      await _dispatchStepWithDelay(ConnectionStep.establishing);
      await _dispatchStepWithDelay(ConnectionStep.checking);
      await _dispatchStepWithDelay(ConnectionStep.done);
    } else {
      await _dispatchStepWithDelay(ConnectionStep.connectionUnavailable);
    }
  }

  Future<void> _dispatchStepWithDelay(ConnectionStep step) async {
    return Future.delayed(
      const Duration(seconds: 2),
      () => emit(
        state.copyWith(step: step),
      ),
    );
  }
}
