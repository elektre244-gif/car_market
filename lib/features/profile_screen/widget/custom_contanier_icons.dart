import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/profile_screen/widget/data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContanierIcons extends StatelessWidget {
  const CustomContanierIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
              child: Column(
                children: [
                  Data(text: "Favorite", icon: Icons.favorite_border),
                  SizedBox(height: 20.h),
                  Data(text: "Payment", icon: Icons.payments),
                  SizedBox(height: 20.h),
                  Data(text: "Tell your friends", icon: Icons.person_add_alt_1_outlined),
                  SizedBox(height: 20.h),
                  Data(text: "Settings", icon: Icons.settings),
                  SizedBox(height: 20.h),
                  Data(text: "Logout", icon: Icons.logout_outlined),
                ],
              ),
            );
  }
}