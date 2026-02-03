import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home_sale_screen/home_sale_screen.dart';
import 'package:flutter_application_1/features/list_car_screen/list_car_screen.dart';
import 'package:flutter_application_1/features/splash_screen/splash_screen.dart';
import 'package:flutter_application_1/features/start_screen/star_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CarMarket extends StatefulWidget {
  const CarMarket({super.key});

  @override
  State<CarMarket> createState() => _CarMarketState();
}

class _CarMarketState extends State<CarMarket> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:StartScreen()
      ),
    );
  }
}