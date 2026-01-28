import 'package:car_ui_temp/screens/car_details_screen.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({super.key});
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarDetailsScreen(),
    );
  }
}
