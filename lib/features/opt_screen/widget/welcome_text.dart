import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomWelcomeText extends StatelessWidget {
  const CustomWelcomeText({super.key});
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Welcome ",
        style: TextStyle(color: Colors.white, fontSize: 25.sp,
        fontWeight: FontWeight.w600),
        children: [
          TextSpan(
            text: "back",
            style: TextStyle(
              color: Color(0xffFFB23E),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
