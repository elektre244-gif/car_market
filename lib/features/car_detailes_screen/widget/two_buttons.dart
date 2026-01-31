import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TwoButtons extends StatelessWidget {
  const TwoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children:[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
            decoration: BoxDecoration(
              color:  Color(0xFFFFE0A3),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child:  Text(
              "Assured",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

           SizedBox(width: 10.w),

          Container(
            padding:  EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              children:[
                Text(
                  "Free test drive",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 6.w),

                Icon(
                  Icons.directions_car,
                  color: Colors.white,
                  size: 16.sp,
                ),
              ],
            ),
          ),

           Spacer(),

          Icon(
            Icons.favorite_border,
            color: Colors.orange,
            size: 30.sp,
          ),
        ],
      ),
    );
  }
}
