import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/modules/theme/domain/entities/entities.dart';
import 'package:tic_tac_toe_app/widgets/text_typography/text_typography.dart';

class Button extends StatelessWidget {
  const Button(
    this.label, {
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    final neutralColors = Theme.of(context).extension<NeutralColors>();

    return Material(
      borderRadius: BorderRadius.circular(4.0.r),
      child: InkWell(
        child: Container(
          height: 54.0.h,
          decoration: BoxDecoration(
            color: neutralColors?.white,
            border: Border.all(
              color: neutralColors?.lightGrey ?? const Color(0xFFE3E3E3),
              width: 1.0.w,
            ),
            borderRadius: BorderRadius.circular(4.0.r),
          ),
          padding: EdgeInsets.symmetric(vertical: 17.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 30.0.w,
              ),
              TextTypography(
                label,
                isDarkMode: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
