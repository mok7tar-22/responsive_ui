import 'package:flutter/material.dart';

import 'Rounded_icon.dart';

class IconsButtons extends StatelessWidget {
  const IconsButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundedIcon(
          icon: "assets/icons/facebook.svg",
          onPress: () {},
        ),
        RoundedIcon(
          icon: "assets/icons/google-plus.svg",
          onPress: () {},
        ),
        RoundedIcon(
          icon: "assets/icons/twitter.svg",
          onPress: () {},
        )
      ],
    );
  }
}
