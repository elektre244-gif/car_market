import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/car_detailes_screen/car_details_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContanierCarInfo extends StatelessWidget {
  const ContanierCarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 154.w,
            height: 183.h,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4.sp,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                  child: Image.asset(
                    'assets/images/car1.jpg',
                    height: 90.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 6.h),

                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '2015 Maruti wagon',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border_sharp,
                      color: Colors.amberAccent,
                      size: 16,
                    ),
                  ],
                ),

                SizedBox(height: 2.h),

                Text(
                  '43,721 km - petrol - manual',
                  style: TextStyle(fontSize: 7.sp, color: Color(0xff807E7E)),
                ),

                SizedBox(height: 4.h),

                Row(
                  children: [
                    Text(
                      '₹3.11 Lakh',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      '₹3.26 Lakh',
                      style: TextStyle(
                        fontSize: 7.sp,
                        color: Color(0xffA6A6A6),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            bottom: -20,
            left: 16,
            right: 16,
            child: SizedBox(
              height: 25.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  elevation: 6,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CarDetailsScreen()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Buy Now',
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.arrow_outward_rounded,
                      size: 14,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
