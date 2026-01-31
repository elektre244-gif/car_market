import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  const Data({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.amber,),
        SizedBox(width: 20),
        Text(text, style: TextStyle(fontSize: 15, color: Colors.black)),
      ],
    );
  }
}

