import 'package:flutter/material.dart';
import 'package:responsive_ui_login_signup_page/models/constants.dart';

class RoundedButton extends StatelessWidget {
  final Color color,textColor;
  final String text;
  final Function() onPress;
  const RoundedButton({required this.text,required this.color,required this.textColor,required this.onPress,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return   Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)))),
          onPressed: onPress,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Text(text,style: TextStyle(color: textColor),))),
    );
  }
}
