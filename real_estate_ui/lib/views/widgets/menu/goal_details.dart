import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate_ui/models/constant.dart';

class GoalDetails extends StatelessWidget {
  final String text;
 GoalDetails({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: kDefaultPadding/2,),
          Text(text,style: TextStyle(color: Colors.white38),)
        ],
      ),
    );
  }
}
