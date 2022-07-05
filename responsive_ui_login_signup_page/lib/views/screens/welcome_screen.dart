import 'package:flutter/material.dart';
import 'package:responsive_ui_login_signup_page/views/widgets/welcome_widget/body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
