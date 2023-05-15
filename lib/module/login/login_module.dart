import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/module/login/presenter/pages/login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind<Object>> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute<dynamic>(
      '/',
      child: (_, __) => LoginPage(
        themeCubit: Modular.get(),
      ),
    ),
  ];
}
