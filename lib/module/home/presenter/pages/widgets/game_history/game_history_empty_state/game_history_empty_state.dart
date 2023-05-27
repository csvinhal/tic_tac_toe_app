import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tic_tac_toe_app/module/widgets/widgets.dart';

class GameHistoryEmptyState extends StatelessWidget {
  const GameHistoryEmptyState({
    required this.isDarkMode,
    super.key,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AppTypography(
            AppLocalizations.of(context).homeHomePageGameHistoryEmpty,
            type: AppTypographyType.subtitle2,
          ),
          AppTypography.secondary(
            AppLocalizations.of(context)
                .homeHomePageGameHistoryEmptyDescription,
            type: AppTypographyType.subtitle2,
          ),
        ],
      ),
    );
  }
}