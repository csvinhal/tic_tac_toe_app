import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/module/home/domain/domain.dart';
import 'package:tic_tac_toe_app/module/home/presenter/pages/widgets/scoreboard/scoreboard_container.dart';
import 'package:tic_tac_toe_app/module/home/presenter/pages/widgets/scoreboard/scoreboard_list.dart';
import 'package:tic_tac_toe_app/module/home/presenter/pages/widgets/scoreboard/storeboard_empty_state.dart';

class Scoreboard extends StatelessWidget {
  const Scoreboard({
    required this.scores,
    super.key,
  });

  final List<ScoreboardItem> scores;

  @override
  Widget build(BuildContext context) {
    return ScoreboardContainer(
      minHeight: scores.isEmpty ? 146.h : 132.h,
      child: scores.isEmpty
          ? const StoryboardEmptyState()
          : ScoreboardList(scores: scores),
    );
  }
}
