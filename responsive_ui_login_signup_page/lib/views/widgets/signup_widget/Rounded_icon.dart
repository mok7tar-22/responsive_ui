import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_login_signup_page/models/constants.dart';

class RoundedIcon extends StatelessWidget {
  final String icon ;
  final Function() onPress;
 RoundedIcon({Key? key, required this.icon, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        padding: EdgeInsets.all(20),

        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor
          ),


        ),
        child: SvgPicture.asset(icon,
        width: 25,
        height: 25,),
      ),
    );
  }
}
