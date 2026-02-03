import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomeBottomNavBar extends StatelessWidget {
  const CustomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/Bag 5.svg',
            width: 22.w,
            height: 22.h,
            color: Colors.black,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/Bag 5.svg',
            width: 22.w,
            height: 22.h,
           color: Colors.amber,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          
          icon: Image.asset(
            'assets/icons/Heart 1.png',
            width: 25.w,
            height: 25.h,
            color: Colors.black,
          ),
         
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/Message 1.svg',
            width: 25.w,
            height: 25.h,
            
            color: Colors.black,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/Message 1.svg',
            width: 25.w,
            height: 25.h,
          
            color: Colors.amber,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/Home 3.svg',
            width: 25.w,
            height: 25.h,
           
            color: Colors.black,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/Home 3.svg',
            width: 25.w,
            height: 25.h,

           
            color: Colors.amber,
          ),
          label: "",
        ),
      ],
    );
  }
}


