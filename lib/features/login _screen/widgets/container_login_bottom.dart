import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ContainerLoginBottom extends StatelessWidget {
  final VoidCallback onPressed;
  const ContainerLoginBottom({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, 
      child: Container(
        width: 337.w,
        height: 44.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xffFFB23E),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create an account',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 5),
            SvgPicture.asset('assets/icons/Send_2.svg'), 
          ],
        ),
      ),
    );
  }
}