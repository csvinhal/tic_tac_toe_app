import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/home/presenter/cubit/home_view_state.dart';

class HomeViewCubit extends Cubit<HomeViewState> {
  HomeViewCubit({required this.themeCubit})
      : super(const HomeViewState(currentIndex: 0));

  final ThemeCubit themeCubit;

  void updateSelectedPage(int newIndex) {
    final page = getPageByIndex(newIndex);
    Modular.to.navigate(page);
    emit(state.copyWith(newIndex));
  }

  String getPageByIndex(int index) {
    switch (index) {
      case 0:
        return 'root';
      case 1:
        return 'online';
      case 2:
        return 'friends';
      default:
        return 'root';
    }
  }
}
