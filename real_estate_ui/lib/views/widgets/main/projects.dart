import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_ui/models/constant.dart';
import 'package:real_estate_ui/models/projects.dart';
import 'package:real_estate_ui/responsive.dart';
import 'package:real_estate_ui/views/widgets/main/project_item.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Our Projects",
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Responsive(
            desktop: buildGridView(crossAxisCount: 3),
            mobile: buildGridView(crossAxisCount: 1),
            largeMobile: buildGridView(crossAxisCount: 2),
            tablet: buildGridView(
                crossAxisCount:
                    MediaQuery.of(context).size.width < 900 ? 2 : 3),
          )
        ],
      ),
    );
  }

  GridView buildGridView({required int crossAxisCount}) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: demoProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: 0.7,
          mainAxisSpacing: kDefaultPadding,
          crossAxisSpacing: kDefaultPadding),
      itemBuilder: (context, index) {
        return ProjectItem(project: demoProjects[index]);
      },
    );
  }
}
