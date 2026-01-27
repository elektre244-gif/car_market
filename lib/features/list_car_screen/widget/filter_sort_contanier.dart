import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterSortContanier extends StatelessWidget {
  final String name;
  final Color? color;
  const FilterSortContanier({super.key, required this.name, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 31.h,
                    width: 74.w,
                    decoration: BoxDecoration(
                      color:color,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.swap_vert),
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
  }
}