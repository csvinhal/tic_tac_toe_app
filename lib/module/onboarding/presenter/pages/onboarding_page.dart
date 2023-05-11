import 'package:flutter/material.dart';

import '../../domain/entity/onboarding_data.dart';
import 'widgets/onboarding/onboarding.dart';
import 'widgets/onboarding/onboarding_navigation/onboarding_navigation.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
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
          itemCount: _onboarding.length,
          controller: _pageController,
          pageSnapping: false,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) => Onboarding(
            path: _onboarding[index].path,
            title: _onboarding[index].title,
            description: _onboarding[index].description,
            isDarkMode: false,
          ),
        ),
        bottomNavigationBar: OnboardingNavigation(
          isDarkMode: false,
          initStep: 0,
          onNext: (index) => _pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          ),
          onPrevious: (index) => _pageController.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          ),
        ),
      ),
    );
  }

  List<OnboardingData> get _onboarding => const [
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
              'Earn points for each game and make your way to top the scoreboard!',
        )
      ];
}
