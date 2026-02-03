import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowBrandPng extends StatelessWidget {
  const RowBrandPng({super.key, required this.imageIcons});
  final String imageIcons;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 66.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
        boxShadow: [
      BoxShadow(
        color: Colors.black,
        spreadRadius: 2,
        blurRadius: 8,
        offset: Offset(0, 4), 
      ),
    ],
      ),
      child: Image.asset(imageIcons),
    );
  }
}


