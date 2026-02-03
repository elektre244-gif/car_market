import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/buy_or_sale_screen/buy_or_sale_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerImage extends StatelessWidget {
  const CustomContainerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BuyOrSaleScreen()));
        },child: Icon(Icons.arrow_back_ios_new)),
       SizedBox(height: 10.h,),
        Container(
          width: double.infinity.w,
          height: 166.h,
          decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage("assets/images/saleCar.jpg"),
           fit: BoxFit.cover,
           ),
           borderRadius: BorderRadius.circular(12)
          ),
        ),
      ],
    );
  }
}