import 'package:flutter/material.dart';

class FilterSortContanier extends StatelessWidget {
  final String name;
  final Color? color;
  const FilterSortContanier({super.key, required this.name, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 31,
                    width: 74,
                    decoration: BoxDecoration(
                      color:color,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.swap_vert),
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
  }
}