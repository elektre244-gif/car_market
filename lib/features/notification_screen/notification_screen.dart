import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/notification_screen/widget/custom_appbar.dart';
import 'package:flutter_application_1/features/notification_screen/widget/custom_notification_icon.dart';
import 'package:flutter_application_1/features/notification_screen/widget/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body:  SafeArea(
     child: Padding(
       padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 25),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           CustomAppbar(),
            SizedBox(height: 20.h,),
            CustomNotificationIcon(),
            SizedBox(height: 30.h,),
            CustomText(text: "Grab the opportunity to save moreon your dream car!"),
            SizedBox(height: 15.h,),
            CustomText(text: "Stay informed about exclusive offers,discounts, and promotions fromdealers and sellers"),
            SizedBox(height: 15.h,),
            CustomText(text: "Receive notifications when potentialbuyers show interest inyour listed car"),
       
            
          ],
        ),
     ),
   ),);
  }
}