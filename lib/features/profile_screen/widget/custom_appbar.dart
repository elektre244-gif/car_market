import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/buy_or_sale_screen/buy_or_sale_screen.dart';

class CustomAppbar extends StatelessWidget   implements PreferredSizeWidget  {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: InkWell(onTap: () {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BuyOrSaleScreen()),(route) => false);
        },
       child:  Icon(Icons.arrow_back_ios_new),),
        backgroundColor: Colors.grey.shade100,
         
        elevation: 0,
      );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}