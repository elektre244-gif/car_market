import 'package:flutter/material.dart';

class ContanierCarInfo extends StatelessWidget {
  const ContanierCarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 154,
          height: 183,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(15),
                ),
                child: Image.asset(
                  'assets/car1.jpg',
                  height: 103,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      '2015 Maruti wagon',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border_sharp,
                    color: Colors.amberAccent,
                    size: 16,
                  )
                ],
              ),

              const SizedBox(height: 2),

              /// details
              const Text(
                '43,721 km - petrol - manual',
                style: TextStyle(
                  fontSize: 7,
                  color: Color(0xff807E7E),
                ),
              ),

              const SizedBox(height: 4),

              /// price
              Row(
                children: const [
                  Text(
                    '₹3.11 Lakh',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    '₹3.26 Lakh',
                    style: TextStyle(
                      fontSize: 7,
                      color: Color(0xffA6A6A6),
                      decoration: TextDecoration.lineThrough,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -18,
          left: 16,
          right: 16,
          child: SizedBox(
            height: 32,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                elevation: 6,
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_outward_rounded,
                      size: 14, color: Colors.white),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}