import 'package:flutter/material.dart';

class CarImagesRow extends StatelessWidget {
  const CarImagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.separated(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        separatorBuilder: (_, __) =>
            SizedBox(width: 8),
        itemBuilder: (_, __) => ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset("Suzuki.jpg",
            width: 70,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
