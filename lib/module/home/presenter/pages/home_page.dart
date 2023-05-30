import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/home/domain/domain.dart';
import 'package:tic_tac_toe_app/module/home/presenter/pages/widgets/widgets.dart';
import 'package:tic_tac_toe_app/module/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.themeCubit,
    super.key,
  });

  final ThemeCubit themeCubit;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  SizedBox(height: 50.h),
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
                  SizedBox(height: 36.h),
                  BlocBuilder<ThemeCubit, ThemeMode>(
                    bloc: _themeCubit,
                    builder: (context, state) {
                      return Score(
                        wins: '0',
                        losses: '0',
                        draws: '0',
                        isDarkMode: _themeCubit.isDarkMode,
                      );
                    },
                  ),
                  SizedBox(height: 72.h),
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
