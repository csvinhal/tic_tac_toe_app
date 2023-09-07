import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/onboarding/domain/entity/onboarding_data.dart';

class OnboardingCubit extends Cubit<int> {
  OnboardingCubit() : super(0);

  void onPageDecrement() {
    emit(state - 1);
  }

  void onPageIncrement() {
    emit(state + 1);
  }

  List<OnboardingData> onboardingItems(BuildContext context) {
    return [
      OnboardingData(
        image: ImageAssetValue.idea,
        title: AppLocalizations.of(context).onboardingOnboardingPageIdeaTitle,
        description: AppLocalizations.of(context)
            .onboardingOnboardingPageIdeaDescription,
      ),
      OnboardingData(
        image: ImageAssetValue.swords,
        title: AppLocalizations.of(context).onboardingOnboardingPageSwordsTitle,
        description: AppLocalizations.of(context)
            .onboardingOnboardingPageSwordsDescription,
      ),
      OnboardingData(
        image: ImageAssetValue.winner,
        title: AppLocalizations.of(context).onboardingOnboardingPageWinnerTitle,
        description: AppLocalizations.of(context)
            .onboardingOnboardingPageWinnerDescription,
      ),
    ];
  }
}
