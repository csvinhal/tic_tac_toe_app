import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/home/presenter/cubit/cubit.dart';
import 'package:tic_tac_toe_app/module/home/presenter/presenter.dart';
import 'package:tic_tac_toe_app/module/home/presenter/views/friends_page.dart';
import 'package:tic_tac_toe_app/module/home/presenter/views/home_page.dart';
import 'package:tic_tac_toe_app/module/home/presenter/views/online_page.dart';

class HomeModule extends Module {
  @override
  List<Module> get imports => [
    CoreModule(),
  ];

  @override
  void binds(Injector i) {
    i.addSingleton<HomeViewCubit>(HomeViewCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => HomeView(
        homeViewCubit: Modular.get(),
      ),
      children: [
        ChildRoute(
          '/root',
          child: (context) => HomePage(themeCubit: Modular.get()),
        ),
        ChildRoute(
          '/online',
          child: (context) => const OnlinePage(),
        ),
        ChildRoute(
          '/friends',
          child: (context) => const FriendsPage(),
        ),
      ],
    );
  }
}
