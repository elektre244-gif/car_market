import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/custome_bottom_nav_Bar.dart';
import 'package:flutter_application_1/core/widgets/custome_text_form_field.dart';
import 'package:flutter_application_1/core/widgets/row_brand_png.dart';
import 'package:flutter_application_1/core/widgets/row_brand_svg.dart';
import 'package:flutter_application_1/features/home_sale_screen/widgets/custom_column_text.dart';
import 'package:flutter_application_1/features/home_sale_screen/widgets/custom_container_image.dart';
import 'package:flutter_application_1/features/home_screen/widget/custom_row_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSaleScreen extends StatelessWidget {
  const HomeSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
             CustomContainerImage(),
             SizedBox(height: 30.h,),
             CustomRowModel(),
             SizedBox(height: 11.h,),
             CustomeTextFormField(text: "(eg. DL45 VC 4321)"),
             SizedBox(height: 18.h,),
            CustomColumnText(),
            SizedBox(height: 20.h,),
                Row(
                  children: [
                    RowBrandPng(imageIcons: 'assets/icons/bmw2.png'),
                    SizedBox(width: 10.w),
                    RowBrandSvg(imageIcons: 'assets/icons/audi2.svg'),
                    SizedBox(width: 10.w),
                    RowBrandSvg(imageIcons: 'assets/icons/hyundai2.svg'),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    RowBrandPng(imageIcons: 'assets/icons/tata3.jpg.jpeg'),
                    SizedBox(width: 10.w),
                    RowBrandPng(imageIcons: 'assets/icons/toyota.png'),
                    SizedBox(width: 10.w),
                    RowBrandPng(imageIcons: 'assets/icons/honda2.png'),
                  ],
                ),
            ],
          ),
            
        ),
      ) ,
      bottomNavigationBar: CustomeBottomNavBar(),
    );
  }
}