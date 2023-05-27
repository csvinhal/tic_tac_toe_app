import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tic_tac_toe_app/core/modules/theme/domain/entities/color_styles.dart';

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
    final styleColors = Theme.of(context).extension<StyleColors>();
    final neutralColors = Theme.of(context).extension<NeutralColors>();

    switch (this) {
      case GameStatusType.won:
        return styleColors?.green;
      case GameStatusType.lost:
        return styleColors?.red;
      case GameStatusType.draw:
        return isDarkMode ? neutralColors?.darkGrey : neutralColors?.grey;
    }
  }
}
