import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home_screen/home_screen.dart';
import 'package:flutter_application_1/features/list_car_screen/widget/costum_switch_to_sell.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowModel extends StatelessWidget {
  const CustomRowModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          Expanded(
            child: Text('Enter your car number',style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
          ),
           
           CostumSwitchToSell(name: 'Switch TO Buy',onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
           },)
        
        ],
      ),
    );
  }
}