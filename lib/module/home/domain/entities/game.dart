import 'package:tic_tac_toe_app/module/home/domain/entities/game_status_type.dart';

class Game {
  const Game({
    required this.opponentsName,
    required this.date,
    required this.status,
  });

  final String opponentsName;
  final DateTime date;
  final GameStatusType status;
}
