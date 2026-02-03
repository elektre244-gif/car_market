import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostumSwitchToSell extends StatelessWidget {
    final Function()? onTap;
  final String name;
  const CostumSwitchToSell({super.key, required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
                      height: 31.h,
                      width: 105.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffF9BE33),
                      ),
                      child: Center(
                        child: Text(
                         name,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
    );
  }
}