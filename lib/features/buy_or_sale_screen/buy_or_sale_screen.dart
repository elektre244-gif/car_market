import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/buy_or_sale_screen/widget/contanier_sale_or_buy.dart';
import 'package:flutter_application_1/features/buy_or_sale_screen/widget/custom_welcom_row.dart';
import 'package:flutter_application_1/features/home_sale_screen/home_sale_screen.dart';
import 'package:flutter_application_1/features/home_screen/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyOrSaleScreen extends StatelessWidget {
  const BuyOrSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 19),
        child: Column(
          children: [
            CustomWelcomRow(),
            SizedBox(height: 40.h,),
            ContanierSaleOrBuy(name1: 'For sale', name2: 'Get the best price for yourcar instantly',onTap:(){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeSaleScreen()));
            } ,),
            SizedBox(height: 42,),
            ContanierSaleOrBuy(name1: 'For buy', name2: 'Choose from 1000+ MRLcertified cars',onTap:(){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            } ,),
            
          ],
        ),
      ),
    ));
    
  }
}