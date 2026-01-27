import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoustemTextField extends StatelessWidget {
  const CoustemTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                decoration: InputDecoration(
                  label: Text('Search Cars...'),
                  labelStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff807E7E),
                  ),
                  suffixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
              );
  }
}