import 'package:flutter/material.dart';

class FeaturedPlants extends StatelessWidget {
  Size size;
 FeaturedPlants(this.size,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 14),
              width: size.width * 0.8,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                      AssetImage("assets/images/bottom_img_1.png"),
                      fit: BoxFit.cover)),
            ),
            Container(
              //padding: EdgeInsets.only(top: 10),
              //margin: EdgeInsets.only(top: 20),
              width: size.width * 0.8,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                      AssetImage("assets/images/bottom_img_1.png"),
                      fit: BoxFit.cover)),
            )
          ],
        ));
  }
}
