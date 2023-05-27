import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/module/home/presenter/pages/widgets/score/score_border/score_border.dart';
import 'package:tic_tac_toe_app/module/home/presenter/pages/widgets/score/score_item/score_item.dart';

class Score extends StatelessWidget {
  const Score({
    required this.wins,
    required this.losses,
    required this.draws,
    required this.isDarkMode,
    super.key,
  });

  final String wins;
  final String losses;
  final String draws;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: Row(
        children: [
          ScoreItem(
            label: AppLocalizations.of(context).homeHomePageScoreWins,
            value: wins,
          ),
          ScoreBorder(isDarkMode: isDarkMode),
          ScoreItem(
            label: AppLocalizations.of(context).homeHomePageScoreLosses,
            value: losses,
          ),
          ScoreBorder(isDarkMode: isDarkMode),
          ScoreItem(
            label: AppLocalizations.of(context).homeHomePageScoreDraws,
            value: draws,
          ),
        ],
      ),
    );
  }
}
