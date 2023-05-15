import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 15.h,
      crossAxisSpacing: 15.w,
      crossAxisCount: 3,
      children: [
        ColoredBox(
          color: Theme.of(context).disabledColor,
          child: SizedBox(
            height: 104.h,
            width: 104.w,
          ),
        ),
        ColoredBox(
          color: Theme.of(context).disabledColor,
          child: SizedBox(
            height: 104.h,
            width: 104.w,
          ),
        ),
        ColoredBox(
          color: Theme.of(context).disabledColor,
          child: SizedBox(
            height: 104.h,
            width: 104.w,
          ),
        ),
        ColoredBox(
          color: Theme.of(context).disabledColor,
          child: SizedBox(
            height: 104.h,
            width: 104.w,
          ),
        ),
        ColoredBox(
          color: Theme.of(context).disabledColor,
          child: SizedBox(
            height: 104.h,
            width: 104.w,
          ),
        ),
        ColoredBox(
          color: Theme.of(context).disabledColor,
          child: SizedBox(
            height: 104.h,
            width: 104.w,
          ),
        ),
        ColoredBox(
          color: Theme.of(context).disabledColor,
          child: SizedBox(
            height: 104.h,
            width: 104.w,
          ),
        ),
        ColoredBox(
          color: Theme.of(context).disabledColor,
          child: SizedBox(
            height: 104.h,
            width: 104.w,
          ),
        ),
        ColoredBox(
          color: Theme.of(context).disabledColor,
          child: SizedBox(
            height: 104.h,
            width: 104.w,
          ),
        ),
      ],
    );
  }
}
