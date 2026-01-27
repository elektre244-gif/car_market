import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/features/list_car_screen/widget/change_location.dart';
import 'package:flutter_application_1/features/list_car_screen/widget/contanier_car_info.dart';
import 'package:flutter_application_1/features/list_car_screen/widget/coustem_text_field.dart';
import 'package:flutter_application_1/features/list_car_screen/widget/custem_appBar.dart';
import 'package:flutter_application_1/features/list_car_screen/widget/filter_sort_contanier.dart';


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
        
              CoustemTextField(),
              SizedBox(height: 23),

              Row(
                children: [
               
                  FilterSortContanier(name: 'Filters',color: Color(0xffFFFFFF),),
                  SizedBox(width: 19),

                 
                  FilterSortContanier(name: 'Sort',color: Color(0xffF9BE33),),
             
                 ChangeLocation(),
                ],
              ),

              SizedBox(height: 17),

             
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '500 used car in your location',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    height: 31,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF9BE33),
                    ),
                    child: Center(
                      child: Text(
                        'Switch to Sell',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 21),

              
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