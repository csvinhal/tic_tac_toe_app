import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';
import 'package:tic_tac_toe_app/module/home/presenter/views/views.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        child: Column(
          children: [
            TopBar(text: AppLocalizations.of(context).homeFriendsPageTopBar),
            SizedBox(height: 24.h),
            InputField(
              label: AppLocalizations.of(context).homeFriendsPageSearchPlayers,
              type: InputFieldType.search,
            ),
            SizedBox(height: 24.h),
            const FriendsList(
              children: [
                FriendsItem(
                  playerName: 'Will Smith',
                  statusType: StatusType.online,
                ),
                FriendsItem(
                  playerName: 'Will Smith',
                  statusType: StatusType.playing,
                ),
                FriendsItem(
                  playerName: 'Will Smith',
                  statusType: StatusType.offline,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
