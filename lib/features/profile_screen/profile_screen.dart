import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/profile_screen/widget/custom_appbar.dart';
import 'package:flutter_application_1/features/profile_screen/widget/custom_contanier_icons.dart';
import 'package:flutter_application_1/features/profile_screen/widget/custom_row_details_person.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
     
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             CustomAppbar(),
          
            CustomRowDetailsPerson(),

            SizedBox(height: 30.h),

            
            Row(
              children: [
                Icon(Icons.add_ic_call_sharp),
                SizedBox(width: 20.w),
                Expanded(child: Text("+201143884922")),
              ],
            ),

            SizedBox(height: 30.h),

            
            Row(
              children: [
                Icon(Icons.email_outlined),
                SizedBox(width: 20.w),
                Expanded(child: Text("MohamedMahmoud@gmail.com")),
              ],
            ),

            SizedBox(height: 50.h),

            
          CustomContanierIcons(),
          ],
        ),
      ),
    );
  }
}
