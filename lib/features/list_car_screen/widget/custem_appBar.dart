import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home_screen/home_screen.dart';
import 'package:flutter_application_1/features/opt_screen/otp_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustemAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustemAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) =>HomeScreen()),
              (route) => false,
            );
          },
        ),
        actions: [
          Icon(
            Icons.favorite_border,
            color: Colors.amber,
            size: 30,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}
