import 'package:flutter/material.dart';

class CustemAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustemAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AppBar(
           leading: Icon(Icons.arrow_back_ios),
           actions: [
            Icon(Icons.favorite_border,color: Colors.amber,size: 30,)
           ],
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size .fromHeight(50);
}