import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarStepsContainer extends StatelessWidget {
  const CarStepsContainer({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
  });
  final String image;
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      width: double.infinity,
      height: 74.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment:CrossAxisAlignment .start,
        mainAxisAlignment:MainAxisAlignment .start,

        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 14.sp),
                ),
                SizedBox(height: 10.h),
                Text(
                  text2,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


