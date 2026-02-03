import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomColumnTime extends StatelessWidget {
  const CustomColumnTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('00:34',style: TextStyle(
          fontSize: 10.sp,
          color: Colors.grey.shade200
        ),),
        SizedBox(height: 15.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Dont receive code?',style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),),
             Text('request again',style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: Colors.amber,
            ),),
          ],
        )
      ],
    );
  }
}