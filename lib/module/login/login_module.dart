import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/module/login/presenter/cubit/cubit.dart';
import 'package:tic_tac_toe_app/module/login/presenter/views/views.dart';

class LoginModule extends Module {
  @override
  final List<Bind<Object>> binds = [
    Bind.lazySingleton((i) => PreparingCubit()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute<dynamic>(
      '/',
      child: (_, __) => SignInView(
        themeCubit: Modular.get(),
      ),
    ),
    ChildRoute<dynamic>(
      '/prepare',
      child: (_, __) => PreparingView(
        preparingCubit: Modular.get(),
        themeCubit: Modular.get(),
      ),
    ),
  ];
}
