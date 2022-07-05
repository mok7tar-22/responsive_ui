import 'package:flutter/material.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/signup_widget/body_signup.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: BodySignUp(),
    );
  }
}
