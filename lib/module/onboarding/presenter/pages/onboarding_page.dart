import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/onboarding/presenter/cubit/cubit.dart';
import 'package:tic_tac_toe_app/module/onboarding/presenter/pages/widgets/widgets.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({
    required this.onboardingCubit,
    required this.onboardCubit,
    super.key,
  });

  final OnboardingCubit onboardingCubit;
  final OnboardCubit onboardCubit;

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
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: _onboardingCubit.onboardingItems(context).length,
          controller: _pageController,
          pageSnapping: false,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            final onboarding = _onboardingCubit.onboardingItems(context)[index];
            return Onboarding(
              image: onboarding.image,
              title: onboarding.title,
              description: onboarding.description,
            );
          },
        ),
      ),
      bottomNavigationBar: OnboardingBottomNavigationBar(
        onboardCubit: _onboardCubit,
        onboardingCubit: _onboardingCubit,
        pageController: _pageController,
      ),
    );
  }

  OnboardingCubit get _onboardingCubit => widget.onboardingCubit;

  OnboardCubit get _onboardCubit => widget.onboardCubit;
}
