import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/module/home/domain/entities/game.dart';
import 'package:tic_tac_toe_app/module/home/presenter/pages/widgets/game_history/game_history_container.dart/game_history_container.dart';
import 'package:tic_tac_toe_app/module/home/presenter/pages/widgets/game_history/game_history_empty_state/game_history_empty_state.dart';
import 'package:tic_tac_toe_app/module/home/presenter/pages/widgets/game_history/game_history_list/game_history_list.dart';

class GameHistory extends StatelessWidget {
  const GameHistory({
    required this.games,
    required this.isDarkMode,
    super.key,
  });

  final List<Game> games;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return GameHistoryContainer(
      isDarkMode: isDarkMode,
      child: games.isEmpty
          ? GameHistoryEmptyState(isDarkMode: isDarkMode)
          : GameHistoryList(games: games, isDarkMode: isDarkMode),
    );
  }
}
