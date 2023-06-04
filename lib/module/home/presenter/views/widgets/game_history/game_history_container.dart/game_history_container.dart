import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameHistoryContainer extends StatelessWidget {
  const GameHistoryContainer({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 146.h),
      child: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        child: child,
      ),
    );
  }
}
