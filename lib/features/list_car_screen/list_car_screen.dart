import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/core/widgets/custome_text_form_field.dart';
import 'package:flutter_application_1/features/home_sale_screen/home_sale_screen.dart';
import 'package:flutter_application_1/features/list_car_screen/widget/change_location.dart';
import 'package:flutter_application_1/features/list_car_screen/widget/contanier_car_info.dart';
import 'package:flutter_application_1/features/list_car_screen/widget/costum_switch_to_sell.dart';
import 'package:flutter_application_1/features/list_car_screen/widget/custem_appBar.dart';
import 'package:flutter_application_1/features/list_car_screen/widget/filter_sort_contanier.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ListCarScreen extends StatelessWidget {
  const ListCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Color(0xffF8F9FD),
        appBar: CustemAppbar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
        
             CustomeTextFormField(text: 'Search Cars..',suffixIcon: Icon(Icons.search),),
              SizedBox(height: 23.h),

              Row(
                children: [
               
                  FilterSortContanier(name: 'Filters',color: Color(0xffFFFFFF),),
                  SizedBox(width: 19.w),

                 
                  FilterSortContanier(name: 'Sort',color: Color(0xffF9BE33),),
             
                 ChangeLocation(),
                ],
              ),

              SizedBox(height: 17.h),

             
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '500 used car in your location',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  CostumSwitchToSell(name: 'Switch To Sale',onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeSaleScreen()));
                  },),
                ],
              ),

              SizedBox(height: 21.h),

              
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.only(bottom: 40),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.85,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) => ContanierCarInfo(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}