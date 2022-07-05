import 'package:flutter/material.dart';

class BackgroundSignUP extends StatelessWidget {
   final Widget child;
  const BackgroundSignUP({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  Size size=MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: 0,
              top: 0,
              child: Image.asset(
                "assets/images/signup_top.png",
                width: size.width * 0.35,
              )),
          Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.25,
              )),
          child,
        ],
      ),
    );
  }
}
