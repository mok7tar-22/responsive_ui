import 'package:flutter/material.dart';
import 'package:responsive_ui_login_signup_page/models/constants.dart';

class TextfieldContainer extends StatelessWidget {
  Widget child;
  TextfieldContainer({required this.child,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return    Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width*0.8,
      decoration: BoxDecoration(
          color:kPrimaryLightColor,
          borderRadius: BorderRadius.circular(29)
      ),
      child: child,
    );
  }
}
