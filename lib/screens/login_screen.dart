import 'package:flutter/material.dart';
import '../widgets/GetOtpButton.dart';
import '../widgets/welcome_text.dart';
import '../widgets/phone_input.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops:  [0.0, 0.7, 1.0],
            colors:  [
              Color(0xFF131212),
              Color(0xFF131212),
              Color(0xFFCBC6C6),
            ],
          ),
        ),
           child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                 SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(height: 22.85),

                WelcomeText(),

                SizedBox(height: 95),

                Text(
                  "Enter your mobile no",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),

                SizedBox(height: 23.14),

                PhoneInput(),

                SizedBox(height: 39.86),

                GetOtpButton(
                  onPressed: () {},
                ),

                SizedBox(height: 50),

                Center(
                  child: Text.rich(
                    TextSpan(
                      text: "Create a new ",
                      style:  TextStyle(color: Colors.white70,
                      fontSize: 25),
                      children: [
                        TextSpan(
                          text: "account",
                          style: TextStyle(
                            color: Color(0xffFFB23E),
                            decoration: TextDecoration.underline,
                            decorationThickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                 SizedBox(height: 40),

                Center(
                  child: Text(
                    "Or",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                ),

                SizedBox(height: 36),

                Container(
                  height: 52,
                  padding:  EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Row(
                    children:[
                       Text(
                        "Sign up with",
                        style: TextStyle(color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w500),
                      ),

                       Spacer(),

                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Image.asset(
                          "assets/GOOGLE.png",
                          fit: BoxFit.contain,
                        ),
                      ),

                       SizedBox(width: 20),

                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.apple,
                          color: Colors.black,
                          size: 36,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

