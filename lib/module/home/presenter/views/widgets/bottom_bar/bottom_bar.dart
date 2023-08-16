import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/module/app_icons_assets.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    required this.currentIndex,
    required this.isDarkMode,
    required this.onSelectItem,
    super.key,
  });

  final int currentIndex;
  final bool isDarkMode;
  final void Function(int)? onSelectItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: SizedBox(
          height: 64.h,
          child: BottomNavigationBar(
            iconSize: 24.w,
            selectedFontSize: 0,
            currentIndex: currentIndex,
            onTap: onSelectItem,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(homeIcon),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(gamesIcon),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(peopleIcon),
                label: '',
              ),
            ],
          ),
        ),
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
    final isSelected = currentIndex == 2;

    if (isSelected) {
      return isDarkMode
          ? AppIconsAssets.peopleDarkSelected
          : AppIconsAssets.peopleSelected;
    }

    return isDarkMode ? AppIconsAssets.peopleDark : AppIconsAssets.people;
  }
}
