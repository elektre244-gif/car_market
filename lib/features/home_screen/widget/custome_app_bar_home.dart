import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/profile_screen/profile_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeAppBarHome extends StatelessWidget {
  const CustomeAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       
        Spacer(),
        Icon(Icons.notifications),
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


