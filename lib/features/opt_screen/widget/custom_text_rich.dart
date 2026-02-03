import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextRich extends StatelessWidget {
  const CustomTextRich({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Center(
          child: Text.rich(
            TextSpan(
              text: "Create a new ",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25.sp,
              ),
              children: [
                TextSpan(
                  text: "account",
                  style: TextStyle(
                    color: Color(0xffFFB23E),
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ],
            ),
          ),
          
        ),  SizedBox(height: 40.h),
                    Center(
                      child: Text(
                        "Or",
                        style: TextStyle(color: Colors.white, fontSize: 20.sp),
                      ),
                    ),
      ],
    );
  }
}