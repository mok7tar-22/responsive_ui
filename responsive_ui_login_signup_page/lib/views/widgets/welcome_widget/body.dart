import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui_login_signup_page/models/constants.dart';
import 'package:responsive_ui_login_signup_page/views/screens/login_screen.dart';
import 'package:responsive_ui_login_signup_page/views/screens/sign_up_screen.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/rounded_button.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/welcome_widget/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: size.height * 0.03,),
              SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.03,),
              RoundedButton(text: "Login",
                  color: kPrimaryColor,
                  textColor: Colors.white,
                  onPress: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    },));
                  }),
              RoundedButton(text: "SignUp",
                  color: kPrimaryLightColor,
                  textColor: Colors.black,
                  onPress: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    },));
                  }),

            ],
          ),
        ));
  }
}
