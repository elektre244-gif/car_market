import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarGalleryRow extends StatelessWidget {
  const CarGalleryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "360 view",
                style: TextStyle(color: Colors.grey, fontSize: 12.sp),
              ),
              Text(
                "1 / 5",
                style: TextStyle(color: Colors.grey, fontSize: 12.sp),
              ),
            ],
          ),

          SizedBox(height: 8.h),

        
          SizedBox(
            height: 80.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (_, __) => SizedBox(width: 20.w),
              itemBuilder: (context, index) {
                return _imageItem();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageItem() {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: Image.asset(
            "assets/images/car1.jpg",
            width: 120.w,
            height: 80.h,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 22.w,
          height: 22.h,
          decoration: const BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              "assets/images/360.png",
              width: 15.w,
              height: 15.h,
            ),
          ),
        ),
      ],
    );
  }
}
