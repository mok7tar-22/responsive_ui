import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_login_signup_page/models/constants.dart';
import 'package:responsive_ui_login_signup_page/views/screens/login_screen.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/login_screen/Rounded_textfield.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/login_screen/rounded_password_field.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/signup_widget/Rounded_icon.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/signup_widget/bacground_singup.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/signup_widget/icons_buttons.dart';

import '../rounded_button.dart';
import 'or_divider.dart';

class BodySignUp extends StatelessWidget {
  const BodySignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundSignUP(
        child: SingleChildScrollView(
          child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            "Sign Up",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedTextfield(
            hintText: "Email",
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Login",
            color: kPrimaryColor,
            textColor: Colors.white,
            onPress: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Do have an Account?",
                style: TextStyle(color: kPrimaryColor),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ));
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          ORDivider(size: size),
        IconsButtons()

      ],
    ),
        ));
  }
}
