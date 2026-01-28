import 'package:flutter/material.dart';

class GetOtpButton extends StatelessWidget {
  final VoidCallback onPressed;
  GetOtpButton({super.key, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFFB23E),
          shape: StadiumBorder(),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Get otp",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ),
            ),
            SizedBox(width: 8),
            Image.asset(
              "assets/arrow.jpeg",
              height: 25,
              width: 25,
            ),
          ],
        ),
      ),

    );
  }
}
