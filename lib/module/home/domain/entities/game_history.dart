import 'package:tic_tac_toe_app/module/home/domain/entities/game.dart';

class GameHistory {
  const GameHistory({
    required this.games,
  });

  final List<Game> games;
}
