import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/custome_text_form_field.dart';
import 'package:flutter_application_1/features/home_screen/widget/car-steps_container.dart';
import 'package:flutter_application_1/features/home_screen/widget/car_container2.dart';
import 'package:flutter_application_1/features/home_screen/widget/custome_app_bar_home.dart';
import 'package:flutter_application_1/core/widgets/custome_bottom_nav_Bar.dart';
import 'package:flutter_application_1/core/widgets/row_brand_png.dart';
import 'package:flutter_application_1/core/widgets/row_brand_svg.dart';
import 'package:flutter_application_1/features/home_screen/widget/row_select_barnd.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          child: Padding(
            padding:EdgeInsets.symmetric(vertical: 55.h, horizontal: 23.w),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment .start,
              children: [
                CustomeAppBarHome(),
                SizedBox(height: 10.h),
                CustomeTextFormField(text: 'Search Car..',suffixIcon: Icon(Icons.search),),
                SizedBox(height: 10.h),
                RowSelectBarnd(),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    RowBrandPng(imageIcons: 'assets/icons/bmw2.png'),
                    SizedBox(width: 5.w),
                    RowBrandSvg(imageIcons: 'assets/icons/audi2.svg'),
                    SizedBox(width: 5.w),
                    RowBrandSvg(imageIcons: 'assets/icons/hyundai2.svg'),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    RowBrandPng(imageIcons: 'assets/icons/tata3.jpg.jpeg'),
                    SizedBox(width: 5.w),
                    RowBrandPng(imageIcons: 'assets/icons/toyota.png'),
                    SizedBox(width: 5.w),
                    RowBrandPng(imageIcons: 'assets/icons/honda2.png'),
                  ],
                ),
                SizedBox(height: 10.h),
                Text(
                  'Buy in 3 easy steps',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 18.sp),
                ),
                SizedBox(height: 10.h),
                CarStepsContainer(
                  image: 'assets/images/pic1.png',
                  text1: 'Find the perfect car\nfor you',
                  text2: 'Thounds of mrl cars',
                ),
                SizedBox(height: 10.h),
                CarContainer2(
                  image: 'assets/images/pic2.png',
                  title1: 'Test drive at\nhome',
                  title2: 'Enjoy of home test drive',
                ),
                SizedBox(height: 10.h),
                CarContainer2(
                  image: 'assets/images/pic3.png',
                  title1: 'Buy it your\nway',
                  title2: 'You can pay in full or fin..',
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomeBottomNavBar(
          
        ),
      ),
    );
  }
}


