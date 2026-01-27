import 'package:flutter/material.dart';

class CoustemTextField extends StatelessWidget {
  const CoustemTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                decoration: InputDecoration(
                  label: Text('Search Cars...'),
                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff807E7E),
                  ),
                  suffixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              );
  }
}