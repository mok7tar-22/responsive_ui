import 'package:flutter/material.dart';
import 'package:real_estate_ui/models/constant.dart';
import 'package:real_estate_ui/models/projects.dart';

class ProjectItem extends StatelessWidget {
  final Project project;
 ProjectItem({Key? key,required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
              child: Text(
                project.description!,
                style: TextStyle(height: 1.5,color: Colors.white38),
              )),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextButton(onPressed: () {}, child: Text("More info >"))
        ],
      ),
    );
  }
}
