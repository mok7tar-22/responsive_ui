import 'package:flutter/material.dart';
import 'package:real_estate_ui/models/constant.dart';
import 'package:real_estate_ui/models/recommendation.dart';

class RecommendationItem extends StatelessWidget {
  Recommendation recommendation;

  RecommendationItem({Key? key, required this.recommendation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      color: kSecondaryColor,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(recommendation.image!),
                radius: 20,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(recommendation.name!),
                  Text(recommendation.source!),
                ],
              )
            ],
          ),
          Text(
            recommendation.text!,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(color: Colors.white38),
          ),
        ],
      ),
    );
  }
}
