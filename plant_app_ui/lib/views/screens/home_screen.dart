import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/models/constants.dart';
import 'package:plant_app_ui/models/plant.dart';
import 'package:plant_app_ui/views/widgets/home_widgets/featured_plants.dart';
import 'package:plant_app_ui/views/widgets/home_widgets/header_app.dart';
import 'package:plant_app_ui/views/widgets/home_widgets/recommended_card.dart';
import 'package:plant_app_ui/views/widgets/home_widgets/title_with_more_button.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
      ),
       bottomNavigationBar:Container(
         decoration: BoxDecoration(
           boxShadow: [
             BoxShadow(
               color: kPrimaryColor.withOpacity(0.36),
               offset:Offset(0,-10),
               blurRadius: 35
             )
           ]
         ),
         child: BottomNavigationBar(
           items: [
             BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/flower.svg"),label: "",),
             BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/heart-icon.svg"),label: "",),
             BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/user-icon.svg"),label: "",)
           ],),
       ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderApp(size),
            TitleWithMoreButton(
                size: size, title: "Recommended", onPress: () {}),
            SizedBox(
              height: size.height * 0.3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: plants.length,
                itemBuilder: (context, index) {
                  return RecommendedCard(size, plants[index]);
                },
              ),
            ),
            TitleWithMoreButton(size: size, title: "Featured Plants", onPress: () {}),
            FeaturedPlants(size),

          ],
        ),
      ),
    );
  }
}
