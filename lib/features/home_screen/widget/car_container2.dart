import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarContainer2 extends StatelessWidget {
  const CarContainer2({
    super.key,
    required this.image,
    required this.title1,
    required this.title2,
  });
  final String image;
  final String title1;
  final String title2;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 74.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 6, left: 12),
        child: Row(
          children: [
            Image.asset(image),
            SizedBox(width: 31.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 14.sp),
                ),
                SizedBox(height: 12.h),
                Text(
                  title2,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


