import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/app_icons_assets.dart';
import 'package:tic_tac_toe_app/module/home/domain/domain.dart';
import 'package:tic_tac_toe_app/module/widgets/widgets.dart';

class ScoreboardList extends StatelessWidget {
  const ScoreboardList({
    required this.scores,
    super.key,
  });

  final List<ScoreboardItem> scores;

  @override
  Widget build(BuildContext context) {
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();
    var position = 0;
    return Padding(
      padding: EdgeInsets.fromLTRB(14.w, 14.h, 14.w, 8.h),
      child: Column(
        children: [
          ...scores.map(
            (score) => Padding(
              padding: EdgeInsets.only(bottom: 6.h),
              child: Row(
                children: [
                  SizedBox(
                      height: 12.h, child: Image.asset(AppIconsAssets.star)),
                  SizedBox(width: 10.w),
                  AppTypography('${position += 1}. ${score.nickname}'),
                  const Spacer(),
                  AppTypography(
                    score.value.toString(),
                    type: AppTypographyType.body1m,
                    color: ticTacToeTheme?.styleColors.yellow,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
