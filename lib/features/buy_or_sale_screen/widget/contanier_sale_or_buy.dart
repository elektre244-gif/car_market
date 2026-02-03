import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContanierSaleOrBuy extends StatelessWidget {
  final Function()? onTap;
  final String name1;
   final String name2;

  const ContanierSaleOrBuy({super.key, required this.name1, required this.name2, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        width: 337.w,
        height: 100.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [BoxShadow(
            color: Colors.black,
            blurRadius: 5,
            spreadRadius: 2,
      
          )],
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 26.w,vertical: 12.h),
          child: Row(
            children: [
             Icon(Icons.favorite_border,color: Colors.amber,size: 25,),
             SizedBox(width: 10,),
             Expanded(
               child: Column(
          children: [
            Text(name1,style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10.h,),
            Text(name2,style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey
            ),textAlign:TextAlign.center)
          ],
                   
               ),
             ),
             SizedBox(width: 10,),
                        Icon(Icons.favorite_border,color: Colors.amber,size: 25,),
              ]  ),
        )
         
      ),
    );
  }
}