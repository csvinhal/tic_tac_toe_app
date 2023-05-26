import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/module/login/presenter/cubit/preparing_cubit.dart';
import 'package:tic_tac_toe_app/module/login/presenter/pages/preparing_page.dart';
import 'package:tic_tac_toe_app/module/login/presenter/pages/sign_in_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind<Object>> binds = [
    Bind.lazySingleton((i) => PreparingCubit())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute<dynamic>(
      '/',
      child: (_, __) => SignInPage(
        themeCubit: Modular.get(),
      ),
    ),
    ChildRoute<dynamic>(
      '/prepare',
      child: (_, __) => PreparingPage(
        preparingCubit: Modular.get(),
        themeCubit: Modular.get(),
      ),
    ),
  ];
}
