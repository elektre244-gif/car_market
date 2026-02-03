import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomVerifyBottom extends StatelessWidget {

   final VoidCallback onPressed;
  const CustomVerifyBottom({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFFB23E),
          shape: StadiumBorder(),
        ),
        onPressed: onPressed, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Verify",
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8.w),
           InkWell(
             child: Image.asset("assets/icons/arrow_icon.png",)
            
              
             
           )
          ],
        ),
      ),
    );
  }
}