import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Widget child;

 Background({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                "assets/images/main_top.png",
                width: size.width * 0.3,
              )),
          Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.2,
              )),
          child
        ],
      ),
    );
  }
}
