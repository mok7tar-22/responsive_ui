import 'package:flutter/material.dart';
import 'package:real_estate_ui/models/constant.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2),
            Image.asset(
              "assets/images/logo.png",
              width: 100,
              height: 100,
            ),
            Spacer(),
            Text("Real Estate"),
            Text("Modern home with \n greate interior desgin",
              textAlign: TextAlign.center,
              style: TextStyle(
                  height: 1.5,
                  color: Colors.white38
              ),

            ),
            Spacer(flex: 2,)
          ],
        ),
      ),
    );
  }
}
