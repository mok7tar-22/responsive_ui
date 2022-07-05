import 'package:flutter/material.dart';
import 'package:real_estate_ui/models/constant.dart';
import 'package:real_estate_ui/views/widgets/main/icon_details.dart';

import '../../../responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        child: Responsive.isDesktop(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconDetails(
                      icon: Icons.supervisor_account_rounded,
                      text: "69+",
                      label: "clients"),
                  IconDetails(
                      icon: Icons.location_on, text: "139+", label: "Projects"),
                  IconDetails(
                      icon: Icons.public, text: "30+", label: "Countries"),
                  IconDetails(icon: Icons.star, text: "13K+", label: "Stars")
                ],
              )
            : Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: IconDetails(
                          icon: Icons.supervisor_account_rounded,
                          text: "69+",
                          label: "clients"),
                    ),
                    Expanded(
                      child: IconDetails(
                          icon: Icons.location_on,
                          text: "139+",
                          label: "Projects"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: IconDetails(
                          icon: Icons.public, text: "30+", label: "Countries"),
                    ),
                    Expanded(
                        child: IconDetails(
                            icon: Icons.star, text: "13K+", label: "Stars"))
                  ],
                ),
              ]));
  }
}
