import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/modules/onboard/presenter/cubits/cubits.dart';
import '../cubit/onboarding_cubit.dart';
import 'widgets/onboarding/onboarding.dart';
import 'widgets/onboarding/onboarding_navigation/onboarding_navigation.dart';

class OnboardingPage extends StatefulWidget {
  final OnboardingCubit onboardingCubit;
  final OnboardCubit onboardCubit;

  const OnboardingPage({
    required this.onboardingCubit,
    required this.onboardCubit,
    super.key,
  });

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _onboardingCubit.state);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          itemCount: _onboardingCubit.onboarding.length,
          controller: _pageController,
          pageSnapping: false,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) => Onboarding(
            path: _onboardingCubit.onboarding[index].path,
            title: _onboardingCubit.onboarding[index].title,
            description: _onboardingCubit.onboarding[index].description,
            isDarkMode: false,
          ),
        ),
        bottomNavigationBar: BlocBuilder<OnboardingCubit, int>(
          bloc: _onboardingCubit,
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            return OnboardingNavigation(
              isDarkMode: false,
              currentStep: _onboardingCubit.state,
              onPrevious: () {
                _onboardingCubit.onPageDecrement();
                _pageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              },
              onNext: () {
                if (_pageController.page == 2) {
                  _onboardCubit.updateOnboardViewedState();
                  Navigator.of(context).pushReplacementNamed('/login');
                  return;
                }
                _onboardingCubit.onPageIncrement();
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              },
            );
          },
        ),
      ),
    );
  }

  OnboardingCubit get _onboardingCubit => widget.onboardingCubit;

  OnboardCubit get _onboardCubit => widget.onboardCubit;
}
