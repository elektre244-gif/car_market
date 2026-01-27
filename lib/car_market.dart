import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/list_car_screen/list_car_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarMarket extends StatelessWidget {
  const CarMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ListCarScreen(),
      ),
    );
  }
}