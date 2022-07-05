import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_ui/models/constant.dart';
import 'package:real_estate_ui/views/widgets/menu/goal_details.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(kDefaultPadding/2),
          child: Text("Goals"),
          
         
        ),
        GoalDetails(text: "Planning stage"),
        GoalDetails(text: "Development"),
        GoalDetails(text: "Execution phase"),
        GoalDetails(text: "New way to living")


      ],
    );
  }
}
