import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_login_signup_page/models/constants.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/login_screen/textfield_container.dart';

class RoundedTextfield extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

 RoundedTextfield({required this.hintText ,required this.icon,required this.onChanged,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextfieldContainer(child: TextField(
       onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        icon: Icon(icon,color: kPrimaryColor,),
        border:InputBorder.none,
      ),

    ));
  }
}
