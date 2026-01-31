import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/list_car_screen/list_car_screen.dart';
import 'widget/car_image_slider.dart';
import 'widget/book_now_button.dart';
import 'widget/car_title_price.dart';
import 'widget/car_gallery_row.dart';
import 'widget/two_buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => ListCarScreen()),
              (route) => false,
            );
          },
        ),
        title: Text(
          "Maruti wagon",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(Icons.share, color: Colors.black),
          SizedBox(width: 12.w),
          Icon(Icons.favorite_border, color: Colors.orange),
          SizedBox(width: 12.w),
        ],
      ),
      body: Column(
        spacing: 20.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarImageSlider(),

          CarGalleryRow(),

          CarTitlePrice(),

          TwoButtons(),

          BookNowButton(),
        ],
      ),
    );
  }
}
