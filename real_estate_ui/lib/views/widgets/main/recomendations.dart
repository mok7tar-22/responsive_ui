import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_ui/models/constant.dart';
import 'package:real_estate_ui/models/projects.dart';
import 'package:real_estate_ui/models/recommendation.dart';
import 'package:real_estate_ui/views/widgets/main/project_item.dart';
import 'package:real_estate_ui/views/widgets/main/recommendation_item.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recomandations",style: TextStyle(fontSize: 25),),
          SizedBox(height: kDefaultPadding/2,),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              primary: false,
              shrinkWrap: true,
              itemCount: demoRecommendations.length,
              itemBuilder: (context, index) {
                return RecommendationItem(recommendation: demoRecommendations[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
