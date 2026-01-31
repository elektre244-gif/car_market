import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CarImagesRow extends StatelessWidget {
  const CarImagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.separated(
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        separatorBuilder: (_, __) =>
            SizedBox(width: 8.w),
        itemBuilder: (_, __) => ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.asset("assets/car1.jpg",
            width: 70.w,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
