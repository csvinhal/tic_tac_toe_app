import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/module/onboarding/domain/entity/onboarding_data.dart';

class OnboardingCubit extends Cubit<int> {
  OnboardingCubit() : super(0);

  void onPageDecrement() {
    emit(state - 1);
  }

  void onPageIncrement() {
    emit(state + 1);
  }

  List<OnboardingData> get onboarding => const [
        OnboardingData(
          path: 'assets/images/idea.png',
          title: 'Welcome',
          description: 'Most fun game now available on your smartphone device!',
        ),
        OnboardingData(
          path: 'assets/images/swords.png',
          title: 'Complete',
          description: 'Play online with your friends and top the leaderboard!',
        ),
        OnboardingData(
          path: 'assets/images/winner.png',
          title: 'Scoreboard',
          description:
              // ignore: lines_longer_than_80_chars
              'Earn points for each game and make your way to top the scoreboard!',
        )
      ];
}
