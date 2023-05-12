import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind<Object>> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const LoginPage()),
  ];
}
