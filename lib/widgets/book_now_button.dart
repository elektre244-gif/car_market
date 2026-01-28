import 'package:flutter/material.dart';

class BookNowButton extends StatelessWidget {
  const BookNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape:StadiumBorder(),
          ),
          onPressed: () {},
          child:Text(
            "Book now",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
