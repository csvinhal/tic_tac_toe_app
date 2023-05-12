import 'package:flutter_modular/flutter_modular.dart';
import 'package:tic_tac_toe_app/module/home/presenter/pages/home_page.dart';

class HomeModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute<dynamic>('/', child: (_, __) => const HomePage()),
  ];
}
