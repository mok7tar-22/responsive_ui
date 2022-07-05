import 'package:flutter/material.dart';
import 'package:real_estate_ui/views/screens/home_screen.dart';
import 'package:real_estate_ui/views/widgets/main/icon_info.dart';
import 'package:real_estate_ui/views/widgets/main/projects.dart';
import 'package:real_estate_ui/views/widgets/main/recomendations.dart';

import 'home_banner.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(mainSection: SingleChildScrollView(
       primary: false,
      child: Column(
        children: [
          HomeBanner(),
         IconInfo(),
          Projects(),
          Recommendations()
        ],
      ),
    ),
    );
  }
}
