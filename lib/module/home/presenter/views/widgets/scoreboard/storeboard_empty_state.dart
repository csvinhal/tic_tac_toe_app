import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class StoryboardEmptyState extends StatelessWidget {
  const StoryboardEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 54.h),
      child: Center(
        child: Column(
          children: [
            AppTypography(
              AppLocalizations.of(context).homeHomePageScoreboardEmpty,
              type: AppTypographyType.subtitle2,
            ),
            AppTypography.secondary(
              AppLocalizations.of(context)
                  .homeHomePageScoreboardEmptyDescription,
              type: AppTypographyType.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}
