import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/profile_screen/widget/data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
         
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage:AssetImage(
                        "assets/images/profile.jpeg",
                      ),
                      radius: 35.r,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: Icon(
                          Icons.edit,
                          size: 15,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sayan Saha",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "Buyer / Seller",
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.edit_outlined,
                  color:  Colors.amber,
                  size: 20.sp,
                ),
              ],
            ),

            SizedBox(height: 30.h),

            
            Row(
              children: [
                Icon(Icons.add_ic_call_sharp),
                SizedBox(width: 20.w),
                Expanded(child: Text("+95356-12367")),
              ],
            ),

            SizedBox(height: 30.h),

            
            Row(
              children: [
                Icon(Icons.email_outlined),
                SizedBox(width: 20.w),
                Expanded(child: Text("Sayan.ccc78@gmail.com")),
              ],
            ),

            SizedBox(height: 50.h),

            
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
