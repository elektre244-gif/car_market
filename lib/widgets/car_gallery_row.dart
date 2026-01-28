import 'package:flutter/material.dart';

class CarGalleryRow extends StatelessWidget {
  const CarGalleryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "360 view",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                "1 / 5",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Images list
          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (_, __) => const SizedBox(width: 20),
              itemBuilder: (context, index) {
                return _imageItem();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageItem() {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            "assets/Suzuki.jpg",
            width: 120,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 22,
          height: 22,
          decoration: const BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              "assets/360.png",
              width: 15,
              height: 15,
            ),
          ),
        ),
      ],
    );
  }
}
