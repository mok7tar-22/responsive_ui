import 'package:flutter/material.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/login_screen/body_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body:BodyLogin() ,
    );
  }
}
