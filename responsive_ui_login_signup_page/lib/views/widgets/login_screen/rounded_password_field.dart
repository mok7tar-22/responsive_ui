import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_login_signup_page/models/constants.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/login_screen/textfield_container.dart';

class RoundedPasswordField extends StatelessWidget {

  final ValueChanged<String> onChanged;

  const RoundedPasswordField({required this.onChanged,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextfieldContainer(
        child: TextField(
          obscureText: true,
      onChanged: onChanged,
      decoration: const InputDecoration(
        hintText: "Password",
        icon: Icon(Icons.lock,color: kPrimaryColor,),
        suffixIcon: Icon(Icons.visibility,color: kPrimaryColor,),

        border:InputBorder.none,
      ),

    ));
  }
}
