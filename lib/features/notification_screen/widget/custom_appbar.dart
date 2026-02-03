import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home_screen/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return   InkWell(onTap: (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    },
      child: Icon(
        Icons.arrow_back_ios_new,size: 25.sp,color: Colors.black,
        ),
    );
  }
}