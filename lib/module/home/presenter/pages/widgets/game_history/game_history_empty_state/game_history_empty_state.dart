import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tic_tac_toe_app/module/widgets/text_typography/text_typography.dart';
import 'package:tic_tac_toe_app/module/widgets/text_typography/text_typography_type.dart';

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
          TextTypography(
            AppLocalizations.of(context).homeHomePageGameHistoryEmpty,
            type: TextTypographyType.subtitle2,
          ),
          TextTypography.secondary(
            AppLocalizations.of(context)
                .homeHomePageGameHistoryEmptyDescription,
            type: TextTypographyType.subtitle2,
          ),
        ],
      ),
    );
  }
}
