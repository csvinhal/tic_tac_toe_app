
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 140.0.h,
              width: 124.0.w,
              child: Image.asset('assets/images/logo_dark.png'),
            )
          ],
        ),
      ),
    );
  }
}