import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/app_images_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    required this.onboardingCubit,
    required this.themeCubit,
    super.key,
  });

  final OnboardCubit onboardingCubit;
  final ThemeCubit themeCubit;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _onboardingCubit.getOnboardingViewed();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardCubit, OnboardState>(
      bloc: _onboardingCubit,
      listenWhen: (previous, current) => current is! OnboardLoadingState,
      listener: (context, state) {
        if (state is OnboardViewedState) {
          Navigator.of(context).pushReplacementNamed('/login');
        } else if (state is OnboardUnviewedState) {
          Navigator.of(context).pushReplacementNamed('/onboarding');
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SizedBox(
              height: 200.0.h,
              width: 180.0.h,
              child: Image.asset(
                _themeCubit.isDarkMode
                    ? AppImagesAssets.logo
                    : AppImagesAssets.logoDark,
              ),
            ),
          ),
        ),
      ),
    );
  }

  OnboardCubit get _onboardingCubit => widget.onboardingCubit;

  ThemeCubit get _themeCubit => widget.themeCubit;
}
