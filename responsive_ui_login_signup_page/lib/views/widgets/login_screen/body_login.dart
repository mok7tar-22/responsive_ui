import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui_login_signup_page/models/constants.dart';
import 'package:responsive_ui_login_signup_page/views/screens/sign_up_screen.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/login_screen/Rounded_textfield.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/login_screen/background.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/login_screen/rounded_password_field.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/login_screen/textfield_container.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/rounded_button.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: size.height*0.03,),
        SvgPicture.asset(
          "assets/icons/login.svg",
          height: size.height * 0.35,
        ),
        SizedBox(height: size.height*0.02,),
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
            Text("Donot have an Account?",style: TextStyle(color: kPrimaryColor),)
            ,InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                },));
              },
              child:Text("Sign Up",style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold),)
              ,
            )
          ],
        )
      ]),
    ));
  }
}
