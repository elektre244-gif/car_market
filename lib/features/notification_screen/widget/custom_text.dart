import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.sentiment_satisfied_alt_rounded,size: 30.sp,color: Colors.black),
        SizedBox(width: 15.w,),
        Expanded(
          child: Text(text,style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade400,
          ),),
        ),
      ],
    );
  }
}