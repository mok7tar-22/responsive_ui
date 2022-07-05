import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_ui/models/constant.dart';
import 'package:real_estate_ui/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background.jpg",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bulid a greate future \n for all us!",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headline2!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)
                        : Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: kDefaultPadding,
                ),
                ElevatedButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 2,
                            vertical: kDefaultPadding)),
                    onPressed: () {},
                    child: Text(
                      "Contact us",
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
