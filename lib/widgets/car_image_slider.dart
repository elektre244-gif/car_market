import 'package:flutter/material.dart';

class CarImageSlider extends StatelessWidget {
  const CarImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: 35),
      height: 226,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(
        "assets/Suzuki.jpg",
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );

  }
}
