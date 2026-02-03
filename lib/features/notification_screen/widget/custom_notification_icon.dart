import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNotificationIcon extends StatelessWidget {
  const CustomNotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Expanded(
              child: Text('Notification',style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
            ),
            Icon(Icons.notifications_active_outlined,size: 35.sp,color:Colors.amber),

          ],
        );
  }
}