import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/buy_or_sale_screen/buy_or_sale_screen.dart';
import 'package:flutter_application_1/features/find_otp_screen/widget/custom_appbar.dart';
import 'package:flutter_application_1/features/find_otp_screen/widget/custom_column.dart';
import 'package:flutter_application_1/features/find_otp_screen/widget/custom_column_time.dart';
import 'package:flutter_application_1/features/find_otp_screen/widget/custom_contanier_otp.dart';
import 'package:flutter_application_1/features/find_otp_screen/widget/custom_verify_bottom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindOtpScreen extends StatelessWidget {
  const FindOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff131212),
                      Color(0xff131212),
                      Color(0xffCBC6C6),
                    ],
                    stops: [0.0, 0.7, 1.0],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
      
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 30.h),
          child: Column(
            children: [
              CustomAppbar() ,
              SizedBox(height: 70.h,),
              CustomColumn(),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  CustomContanierOtp(),
                  SizedBox(width: 30.w,),
                  CustomContanierOtp(),
                  SizedBox(width: 30.w,),
                  CustomContanierOtp(),
                  SizedBox(width: 30.w,),
                  CustomContanierOtp(),
                ],
              ),
              SizedBox(height: 55.h,),
              CustomVerifyBottom(onPressed:(){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BuyOrSaleScreen()));
              }),

              SizedBox(height: 25.h,),
              CustomColumnTime(),
            ],
          ),
        ),
      ),

    ),);

  }
}