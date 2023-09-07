import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/module/home/presenter/cubit/cubit.dart';
import 'package:tic_tac_toe_app/module/home/presenter/presenter.dart';
import 'package:tic_tac_toe_app/module/home/presenter/views/friends_page.dart';
import 'package:tic_tac_toe_app/module/home/presenter/views/home_page.dart';
import 'package:tic_tac_toe_app/module/home/presenter/views/online_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind<Object>> binds = [
    Bind.singleton(
      (i) => HomeViewCubit(themeCubit: Modular.get()),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute<dynamic>(
      '/',
      child: (_, __) => HomeView(
        homeViewCubit: Modular.get(),
      ),
      children: [
        ChildRoute(
          '/root',
          child: (context, args) => HomePage(themeCubit: Modular.get()),
        ),
        ChildRoute(
          '/online',
          child: (context, args) => const OnlinePage(),
        ),
        ChildRoute(
          '/friends',
          child: (context, args) => const FriendsPage(),
        ),
      ],
    ),
  ];
}
