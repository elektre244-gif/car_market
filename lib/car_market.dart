import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/list_car_screen/list_car_screen.dart';

class CarMarket extends StatelessWidget {
  const CarMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListCarScreen(),
    );
  }
}