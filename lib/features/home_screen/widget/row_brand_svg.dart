import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RowBrandSvg extends StatelessWidget {
  const RowBrandSvg({super.key, required this.imageIcons});
  final String imageIcons;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 66.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
      ),
      child: SvgPicture.asset(imageIcons),
    );
  }
}


