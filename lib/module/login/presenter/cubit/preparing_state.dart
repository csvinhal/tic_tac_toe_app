import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum ConnectionStep {
  initial,
  connecting,
  establishing,
  checking,
  done,
  connectionUnavailable,
}

extension ConnectionStepExtenion on ConnectionStep {
  String text(BuildContext context) {
    switch (this) {
      case ConnectionStep.initial:
        return '';
      case ConnectionStep.connecting:
        return AppLocalizations.of(context).loginPreparingPageCheckingAccount;
      case ConnectionStep.establishing:
        return AppLocalizations.of(context)
            .loginPreparingPageEstablishingSegureConnection;
      case ConnectionStep.checking:
        return AppLocalizations.of(context).loginPreparingPageCheckingAccount;
      case ConnectionStep.done:
        return AppLocalizations.of(context).loginPreparingPageDone;
      case ConnectionStep.connectionUnavailable:
        return AppLocalizations.of(context)
            .loginPreparingPageConnectionUnavailable;
    }
  }

  double get progress {
    switch (this) {
      case ConnectionStep.initial:
        return 0;
      case ConnectionStep.connecting:
        return 0.25;
      case ConnectionStep.establishing:
        return 0.5;
      case ConnectionStep.checking:
        return 0.75;
      case ConnectionStep.done:
        return 1;
      case ConnectionStep.connectionUnavailable:
        return 0;
    }
  }
}

class PreparingState extends Equatable {
  const PreparingState({
    required this.step,
  });

  final ConnectionStep step;

  @override
  List<Object?> get props => [
        step,
      ];

  PreparingState copyWith({
    ConnectionStep? step,
  }) {
    return PreparingState(
      step: step ?? this.step,
    );
  }
}
