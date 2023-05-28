import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/modules/theme/domain/entities/entities.dart';
import 'package:tic_tac_toe_app/module/app_icons_assets.dart';
import 'package:tic_tac_toe_app/module/home/presenter/pages/widgets/bottom_bar/bottom_bar_item.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    required this.currentIndex,
    required this.isDarkMode,
    super.key,
  });

  final int currentIndex;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    final styleColors = Theme.of(context).extension<StyleColors>();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      padding: EdgeInsets.symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        color: isDarkMode ? styleColors?.darkerBlue : styleColors?.blue,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          BottomBarItem(
            icon: homeIcon,
            onTap: () {},
          ),
          BottomBarItem(
            icon: gamesIcon,
            onTap: () {},
          ),
          BottomBarItem(
            icon: peopleIcon,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  String get homeIcon {
    final isSelected = currentIndex == 0;

    if (isSelected) {
      return isDarkMode
          ? AppIconsAssets.homeDarkSelected
          : AppIconsAssets.homeSelected;
    }

    return isDarkMode ? AppIconsAssets.homeDark : AppIconsAssets.home;
  }

  String get gamesIcon {
    final isSelected = currentIndex == 1;

    if (isSelected) {
      return isDarkMode
          ? AppIconsAssets.gamesDarkSelected
          : AppIconsAssets.gamesSelected;
    }

    return isDarkMode ? AppIconsAssets.gamesDark : AppIconsAssets.games;
  }

  String get peopleIcon {
    final isSelected = currentIndex == 1;

    if (isSelected) {
      return isDarkMode
          ? AppIconsAssets.peopleDarkSelected
          : AppIconsAssets.peopleSelected;
    }

    return isDarkMode ? AppIconsAssets.peopleDark : AppIconsAssets.people;
  }
}
