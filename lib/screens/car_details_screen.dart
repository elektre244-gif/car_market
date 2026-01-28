import 'package:car_ui_temp/widgets/two_buttons.dart';
import 'package:flutter/material.dart';
import '../widgets/car_image_slider.dart';
import '../widgets/book_now_button.dart';
import '../widgets/car_title_price.dart';
import '../widgets/car_gallery_row.dart';


class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon:Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
        title:Text(
          "Maruti wagon",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions:[
          Icon(Icons.share, color: Colors.black),
          SizedBox(width: 12),
          Icon(Icons.favorite_border, color: Colors.orange),
          SizedBox(width: 12),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CarImageSlider(),

          SizedBox(height: 16),

          CarGalleryRow(),

          SizedBox(height: 20),

          CarTitlePrice(),

          SizedBox(height: 20),

          TwoButtons(),

          SizedBox(height: 32),

          BookNowButton(),
        ],
      ),
    );
  }
}
