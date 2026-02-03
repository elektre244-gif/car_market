import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/notification_screen/notification_screen.dart';
import 'package:flutter_application_1/features/profile_screen/profile_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomWelcomRow extends StatelessWidget {
  const CustomWelcomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello,Mohamed👋 ',style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,

              ),),
              Text("Here You can sell and buy second-hand car",style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,

              ),),
             SizedBox(height: 24.h,),
             Text('what would you like to do?',style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              
             ),)
            ],
          ),
          
             ),
        Row(
      
          children: [
            
            InkWell(onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
            },child: Icon(Icons.notifications_none_outlined,color: Colors.black,)),
            SizedBox(width: 5,),
            Icon(Icons.help_outline_outlined,color: Colors.black,),
            SizedBox(width: 10,),
            InkWell(onTap: () {
          Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>ProfileScreen()),(route) => false);
        },
          child: CircleAvatar(backgroundImage: AssetImage("assets/images/profile.jpeg"),radius: 13.sp, backgroundColor: Colors.grey
          ),
        ),
         ],
        )
      ],
    );
  }
}