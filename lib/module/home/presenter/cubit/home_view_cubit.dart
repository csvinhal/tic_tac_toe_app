import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/home/presenter/cubit/home_view_state.dart';
import 'package:tic_tac_toe_app/module/home/presenter/views/friends_page.dart';
import 'package:tic_tac_toe_app/module/home/presenter/views/home_page.dart';
import 'package:tic_tac_toe_app/module/home/presenter/views/online_page.dart';

class HomeViewCubit extends Cubit<HomeViewState> {
  HomeViewCubit({required this.themeCubit})
      : super(const HomeViewState(currentIndex: 0));

  final ThemeCubit themeCubit;

  Widget get selectedPage => _pages()[state.currentIndex];

  void updateSelectedPage(int newIndex) {
    emit(state.copyWith(newIndex));
  }

  List<Widget> _pages() {
    return [
      HomePage(themeCubit: themeCubit),
      const OnlinePage(),
      const FriendsPage(),
    ];
  }
}
