import 'package:flutter/material.dart';
import 'package:real_estate_ui/models/constant.dart';

class ContacDetails extends StatelessWidget {
  final String title,text;

  ContacDetails({Key? key, required this.title, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(text,style: TextStyle(color: Colors.white38),)
        ],
      ),
    );
  }
}
