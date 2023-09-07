import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';

enum StatusType {
  online,
  offline,
  playing;
}

class Status extends StatelessWidget {
  const Status({
    required this.statusType,
    super.key,
  });

  final StatusType statusType;

  StatusThemeData? themeStyleOf(BuildContext context) {
    return StatusTheme.of(context);
  }

  StatusThemeData defaultStyleOf() {
    return StatusThemeData.fallback();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 6.w,
              height: 6.w,
              decoration: BoxDecoration(
                color: getColorByType(context),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 4.w),
            AppTypography(
              getTextByStatusType(context),
              type: AppTypographyType.body2,
            ),
          ],
        )
      ],
    );
  }

  Color getColorByType(BuildContext context) {
    final themeStyle = themeStyleOf(context);
    final defaultStyle = defaultStyleOf();
    final themeData = themeStyle ?? defaultStyle;

    switch (statusType) {
      case StatusType.online:
        return themeData.onlineColor!;
      case StatusType.offline:
        return themeData.offlineColor!;
      case StatusType.playing:
        return themeData.playingColor!;
    }
  }

  String getTextByStatusType(BuildContext context) {
    switch (statusType) {
      case StatusType.online:
        return AppLocalizations.of(context).themeStatusOnline;
      case StatusType.offline:
        return AppLocalizations.of(context).themeStatusOffline;
      case StatusType.playing:
        return AppLocalizations.of(context).themeStatusPlaying;
    }
  }
}
