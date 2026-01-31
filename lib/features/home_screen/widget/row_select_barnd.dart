import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/list_car_screen/list_car_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowSelectBarnd extends StatelessWidget {
  const RowSelectBarnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Select your brand car',
            style: TextStyle(fontFamily: 'Montserrat', fontSize: 18.sp),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListCarScreen()),
            );
          },
          child: Container(
            width: 105.w,
            height: 25.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffF9BE33),
            ),
            child: Center(
              child: Text(
                'Switch to sell',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
