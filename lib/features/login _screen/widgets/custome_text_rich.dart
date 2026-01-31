import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeTextRich extends StatelessWidget {
  const CustomeTextRich({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 25.sp,
              color: Colors.white,
            ),
          ),
          TextSpan(
            text: text2,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 25.sp,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}


