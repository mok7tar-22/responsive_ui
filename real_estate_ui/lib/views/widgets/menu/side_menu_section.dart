import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_ui/models/constant.dart';
import 'package:real_estate_ui/views/widgets/menu/logo.dart';

import 'contact_info.dart';
import 'goals.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Logo(),
          Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContactInfo(),
                Divider(),
                Goals(),
                Divider(),
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/download.svg"),
                        SizedBox(
                          width: kDefaultPadding / 2,
                        ),
                        Text(
                          "Download Brochure",
                          style: TextStyle(color: Colors.white38),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: kSecondaryColor,
                  margin: EdgeInsets.only(top: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/linkedin.svg")),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/github.svg")),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/twitter.svg")),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/dribble.svg")),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
