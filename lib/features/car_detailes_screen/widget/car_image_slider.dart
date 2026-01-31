import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CarImageSlider extends StatelessWidget {
  const CarImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: 35.w),
      height: 226,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
      ),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(
        "assets/images/car1.jpg",
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );

  }
}
