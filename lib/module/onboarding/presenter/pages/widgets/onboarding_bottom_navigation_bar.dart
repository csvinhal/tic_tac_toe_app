import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/onboarding/presenter/cubit/cubit.dart';

class OnboardingBottomNavigationBar extends StatelessWidget {
  const OnboardingBottomNavigationBar({
    required this.onboardingCubit,
    required this.onboardCubit,
    required this.pageController,
    super.key,
  });

  final OnboardingCubit onboardingCubit;
  final OnboardCubit onboardCubit;
  final PageController pageController;
  Duration get _duration => const Duration(milliseconds: 300);
  Cubic get _curve => Curves.easeIn;

  void _onPrevious() {
    onboardingCubit.onPageDecrement();
    pageController.previousPage(
      duration: _duration,
      curve: _curve,
    );
  }

  void _onNext(BuildContext context) {
    final isLastPage = pageController.page == 2;

    if (isLastPage) {
      onboardCubit.updateOnboardViewedState();
      Navigator.of(context).pushReplacementNamed('/login');
      return;
    }

    onboardingCubit.onPageIncrement();
    pageController.nextPage(
      duration: _duration,
      curve: _curve,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, int>(
      bloc: onboardingCubit,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 8.h),
          child: OnboardingNavigation(
            previousLabel: AppLocalizations.of(context)
                .onboardingOnboardingPagePreviousLabel,
            nextLabel:
                AppLocalizations.of(context).onboardingOnboardingPageNextLabel,
            currentStep: state,
            totalSteps: onboardingCubit.onboardingItems(context).length,
            onPrevious: _onPrevious,
            onNext: () => _onNext(context),
          ),
        );
      },
    );
  }
}
