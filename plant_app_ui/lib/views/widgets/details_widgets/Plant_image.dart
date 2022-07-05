import 'package:flutter/material.dart';
import 'package:plant_app_ui/models/constants.dart';

class PlantImage extends StatelessWidget {
  Size size;
  PlantImage(this.size,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: size.width * 0.75,
      height: size.height * 0.8,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 60,
                color: kPrimaryColor.withOpacity(0.30))
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              bottomLeft: Radius.circular(40)),
          image: DecorationImage(
              image: AssetImage("assets/images/img.png"),
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft)),
    );
  }
}
