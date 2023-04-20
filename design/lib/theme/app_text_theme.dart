import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static final textTheme = TextTheme(
    displayLarge: GoogleFonts.roboto(
      fontSize: 24.0.sp,
      fontWeight: FontWeight.w700,
      height: 28.13.h / 24.0.sp,
    ),
    displayMedium: GoogleFonts.roboto(
      fontSize: 24.0.sp,
      fontWeight: FontWeight.w500,
      height: 28.13.h / 24.0.sp,
    ),
    headlineMedium: GoogleFonts.roboto(
      fontSize: 18.0.sp,
      fontWeight: FontWeight.w400,
      height: 21.09.h / 18.0.sp,
    ),
    headlineSmall: GoogleFonts.roboto(
      fontSize: 18.0.sp,
      fontWeight: FontWeight.w500,
      height: 21.09.h / 18.0.sp,
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 16.0.sp,
      fontWeight: FontWeight.w400,
      height: 18.75.h / 16.0.sp,
    ),
    titleSmall: GoogleFonts.roboto(
      fontSize: 16.0.sp,
      fontWeight: FontWeight.w500,
      height: 18.75.h / 16.0.sp,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 14.0.sp,
      fontWeight: FontWeight.w400,
      height: 16.0.h / 14.0.sp,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14.0.sp,
      fontWeight: FontWeight.w500,
      height: 16.0.h / 14.0.sp,
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 12.0.sp,
      fontWeight: FontWeight.w400,
      height: 12.0.h / 12.0.sp,
    ),
  );
}
