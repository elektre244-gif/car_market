import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  WelcomeText({super.key});
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Welcome ",
        style: TextStyle(color: Colors.white, fontSize: 25,
        fontWeight: FontWeight.w600),
        children: [
          TextSpan(
            text: "back",
            style: TextStyle(
              color: Color(0xffFFB23E),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
