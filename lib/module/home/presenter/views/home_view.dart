import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/home/domain/domain.dart';
import 'package:tic_tac_toe_app/module/home/presenter/views/widgets/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    required this.themeCubit,
    super.key,
  });

  final ThemeCubit themeCubit;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h),
                  const Center(
                    child: AppTypography(
                      'Welcome',
                      type: AppTypographyType.subtitle1,
                    ),
                  ),
                  const Center(
                    child: AppTypography(
                      'Truman Winterbottom',
                      type: AppTypographyType.header1,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    height: 94.h,
                    child: Center(
                      child: Score(
                        children: [
                          ScoreItem(
                            label: AppLocalizations.of(context)
                                .homeHomePageScoreWins,
                            value: '0',
                          ),
                          ScoreItem(
                            label: AppLocalizations.of(context)
                                .homeHomePageScoreLosses,
                            value: '0',
                          ),
                          ScoreItem(
                            label: AppLocalizations.of(context)
                                .homeHomePageScoreDraws,
                            value: '0',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  AppTypography(
                    AppLocalizations.of(context).homeHomePageGameHistoryTitle,
                    type: AppTypographyType.subtitle1,
                  ),
                  SizedBox(height: 12.h),
                  BlocBuilder<ThemeCubit, ThemeMode>(
                    bloc: _themeCubit,
                    builder: (context, state) {
                      return GameHistory(
                        games: [
                          Game(
                            opponentsName: 'Will Smith',
                            date: DateTime.now(),
                            status: GameStatusType.won,
                          ),
                          Game(
                            opponentsName: 'Will Smith',
                            date: DateTime.now(),
                            status: GameStatusType.lost,
                          ),
                          Game(
                            opponentsName: 'Will Smith',
                            date: DateTime.now(),
                            status: GameStatusType.won,
                          ),
                          Game(
                            opponentsName: 'Will Smith',
                            date: DateTime.now(),
                            status: GameStatusType.lost,
                          ),
                          Game(
                            opponentsName: 'Will Smith',
                            date: DateTime.now(),
                            status: GameStatusType.draw,
                          ),
                        ],
                        isDarkMode: _themeCubit.isDarkMode,
                      );
                    },
                  ),
                  SizedBox(height: 24.h),
                  AppTypography(
                    AppLocalizations.of(context).homeHomePageScoreboardTitle,
                    type: AppTypographyType.subtitle1,
                  ),
                  SizedBox(height: 12.h),
                  BlocBuilder<ThemeCubit, ThemeMode>(
                    bloc: _themeCubit,
                    builder: (context, state) {
                      return Scoreboard(
                        scores: const [
                          ScoreboardItem(nickname: 'Will Smith', value: 250),
                          ScoreboardItem(nickname: 'Will Smith', value: 230),
                          ScoreboardItem(nickname: 'Will Smith', value: 210),
                          ScoreboardItem(nickname: 'Will Smith', value: 190),
                          ScoreboardItem(nickname: 'Will Smith', value: 170),
                        ],
                        isDarkMode: _themeCubit.isDarkMode,
                      );
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              right: 24.w,
              left: 24.w,
              bottom: 24.h,
              child: BlocBuilder<ThemeCubit, ThemeMode>(
                bloc: _themeCubit,
                builder: (context, state) {
                  return BottomBar(
                    currentIndex: 0,
                    isDarkMode: _themeCubit.isDarkMode,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  ThemeCubit get _themeCubit => widget.themeCubit;
}
