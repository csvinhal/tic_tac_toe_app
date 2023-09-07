import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/home/presenter/cubit/cubit.dart';
import 'package:tic_tac_toe_app/module/home/presenter/presenter.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    required this.homeViewCubit,
    super.key,
  });

  final HomeViewCubit homeViewCubit;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewCubit, HomeViewState>(
      bloc: _homeViewCubit,
      builder: (context, state) {
        return Scaffold(
          body: const RouterOutlet(),
          bottomNavigationBar: BlocBuilder<ThemeCubit, ThemeMode>(
            bloc: _themeCubit,
            builder: (_, __) {
              return BottomBar(
                currentIndex: state.currentIndex,
                isDarkMode: _themeCubit.isDarkMode,
                onSelectItem: _homeViewCubit.updateSelectedPage,
              );
            },
          ),
        );
      },
    );
  }

  ThemeCubit get _themeCubit => _homeViewCubit.themeCubit;

  HomeViewCubit get _homeViewCubit => widget.homeViewCubit;
}
