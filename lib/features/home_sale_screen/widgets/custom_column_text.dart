import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomColumnText extends StatelessWidget {
  const CustomColumnText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text("or",
        style:TextStyle(
                  fontSize:15.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff807E7E),
                 )),
       SizedBox(height: 8,),
       Text('Select your car brand',style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.black,
       ),)
      ],
    );
  }
}