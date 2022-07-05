import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_ui/models/constant.dart';
import 'package:real_estate_ui/responsive.dart';
import 'package:real_estate_ui/views/widgets/menu/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  final Widget mainSection;
  const HomeScreen({Key? key, required this.mainSection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)?null:AppBar(
        backgroundColor: kBgColor,
         leading: Builder(builder:(context) => IconButton(icon: Icon(Icons.menu), onPressed: () {
           Scaffold.of(context).openDrawer();
         },

         ),
         )

         ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            if(Responsive.isDesktop(context)) Expanded(
                  flex: 2,
                  child: SideMenuSection()),
              Expanded(
                  flex: 7,
                  child: mainSection,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
