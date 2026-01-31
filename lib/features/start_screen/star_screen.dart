import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/splash_screen/splash_screen.dart';
import 'package:lottie/lottie.dart';


class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();

   
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  SplashScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Lottie.asset("assets/images/light up (1).json"),
      ),
    );
  }
}