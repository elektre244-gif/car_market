import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField({super.key, required this.text, this.suffixIcon});
  final String text;
  final  Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (v) {
        FocusScope.of(context).unfocus();
      },
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 15.sp,
        color: Colors.white,
      ),
      
      decoration: InputDecoration(
        
       label: Text(text),
        labelStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16.sp,
          color: Colors.grey,
        ),
        
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.amber),
        ),
      ),
    );
  }
}