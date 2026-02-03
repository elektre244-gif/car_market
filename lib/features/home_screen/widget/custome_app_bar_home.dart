import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/buy_or_sale_screen/buy_or_sale_screen.dart';
import 'package:flutter_application_1/features/home_screen/home_screen.dart';
import 'package:flutter_application_1/features/notification_screen/notification_screen.dart';
import 'package:flutter_application_1/features/profile_screen/profile_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeAppBarHome extends StatelessWidget {
  const CustomeAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       InkWell(onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>BuyOrSaleScreen()));
        },child: Icon(Icons.arrow_back_ios,)),
        Spacer(),
        InkWell(onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationScreen()));
        },
        child: Icon(Icons.notifications)),
        SizedBox(width: 10.w),
        Icon(Icons.help),
        SizedBox(width: 10.w),
        InkWell(onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileScreen()));
        },
          child: CircleAvatar(backgroundImage: AssetImage("assets/images/profile.jpeg"),radius: 13.sp, backgroundColor: Colors.grey
          ),
        ),
      ],
    );
  }
}


