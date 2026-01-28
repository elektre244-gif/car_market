import 'package:flutter/material.dart';

class TwoButtons extends StatelessWidget {
  const TwoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children:[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color:  Color(0xFFFFE0A3),
              borderRadius: BorderRadius.circular(20),
            ),
            child:  Text(
              "Assured",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

           SizedBox(width: 10),

          Container(
            padding:  EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children:[
                Text(
                  "Free test drive",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 6),

                Icon(
                  Icons.directions_car,
                  color: Colors.white,
                  size: 16,
                ),
              ],
            ),
          ),

           Spacer(),

          Icon(
            Icons.favorite_border,
            color: Colors.orange,
            size: 30,
          ),
        ],
      ),
    );
  }
}
