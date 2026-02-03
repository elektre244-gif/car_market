import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContanierOtp extends StatelessWidget {
  const CustomContanierOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade400
      ),
    );
  }
}