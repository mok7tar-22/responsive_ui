

import 'package:flutter/material.dart';

class IconDetails extends StatelessWidget {
  final IconData icon;
  final String text,label;
   IconDetails({Key? key, required this.icon, required this.text, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,size: 50,),
        SizedBox(height: 10,),
        Text(text,style: TextStyle(fontSize: 25),),
        Text(label,style: TextStyle(fontSize: 25))
      ],
    );
  }
}
