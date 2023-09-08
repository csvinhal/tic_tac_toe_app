import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/module/login/presenter/cubit/cubit.dart';
import 'package:tic_tac_toe_app/module/login/presenter/views/views.dart';

class LoginModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton<PreparingCubit>(PreparingCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r
      ..child(
        '/',
        child: (context) => SignInView(
          themeCubit: Modular.get(),
        ),
      )
      ..child(
        '/prepare',
        child: (context) => PreparingView(
          preparingCubit: Modular.get(),
          themeCubit: Modular.get(),
        ),
      );
  }
}
