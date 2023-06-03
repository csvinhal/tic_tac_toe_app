import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/home/domain/entities/game.dart';
import 'package:tic_tac_toe_app/module/home/domain/entities/game_status_type.dart';

class GameHistoryList extends StatelessWidget {
  const GameHistoryList({
    required this.games,
    required this.isDarkMode,
    super.key,
  });

  final bool isDarkMode;
  final List<Game> games;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat.yMd(AppLocalizations.of(context).localeName);

    return ListView.separated(
      shrinkWrap: true,
      itemCount: games.length,
      padding: EdgeInsets.symmetric(
        horizontal: 14.w,
        vertical: 14.h,
      ),
      separatorBuilder: (context, index) => SizedBox(height: 6.h),
      itemBuilder: (context, index) {
        final game = games[index];
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTypography(game.opponentsName),
                SizedBox(height: 4.h),
                AppTypography.secondary(
                  dateFormat.format(game.date),
                  type: AppTypographyType.body2,
                ),
              ],
            ),
            AppTypography(
              game.status.text(context).toUpperCase(),
              color: game.status.color(context, isDarkMode: isDarkMode),
            )
          ],
        );
      },
    );
  }
}
