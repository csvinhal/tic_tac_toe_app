import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class FriendsList extends StatelessWidget {
  const FriendsList({
    required this.children,
    super.key,
  });

  final List<FriendsItem> children;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => children[index],
      separatorBuilder: (context, index) => SizedBox(height: 20.h),
      itemCount: children.length,
    );
  }
}

class FriendsItem extends StatelessWidget {
  const FriendsItem({
    required this.playerName,
    required this.statusType,
    super.key,
  });

  final String playerName;
  final StatusType statusType;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTypography(playerName, type: AppTypographyType.subtitle2),
            Status(statusType: statusType),
          ],
        ),
        SmallButton(
          buttonState: statusType == StatusType.online
              ? SmallButtonStateType.active
              : SmallButtonStateType.inactive,
        ),
      ],
    );
  }
}
