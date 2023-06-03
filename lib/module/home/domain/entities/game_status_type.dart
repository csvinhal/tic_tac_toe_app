import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tic_tac_toe_app/core/core.dart';

enum GameStatusType {
  won,
  lost,
  draw,
}

extension GameStatusTypeExtension on GameStatusType {
  String text(BuildContext context) {
    switch (this) {
      case GameStatusType.won:
        return AppLocalizations.of(context)
            .homeHomePageGameHistoryGameStatusWon;
      case GameStatusType.lost:
        return AppLocalizations.of(context)
            .homeHomePageGameHistoryGameStatusLost;
      case GameStatusType.draw:
        return AppLocalizations.of(context)
            .homeHomePageGameHistoryGameStatusDraw;
    }
  }

  Color? color(BuildContext context, {required bool isDarkMode}) {
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();

    switch (this) {
      case GameStatusType.won:
        return ticTacToeTheme?.styleColors?.green;
      case GameStatusType.lost:
        return ticTacToeTheme?.styleColors?.red;
      case GameStatusType.draw:
        return isDarkMode
            ? ticTacToeTheme?.neutralColors?.darkGrey
            : ticTacToeTheme?.neutralColors?.grey;
    }
  }
}
