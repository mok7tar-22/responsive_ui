import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_ui/models/constants.dart';
import 'package:plant_app_ui/views/widgets/details_widgets/Plant_image.dart';
import 'package:plant_app_ui/views/widgets/details_widgets/icon_card.dart';
import 'package:plant_app_ui/views/widgets/details_widgets/title_price.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(

                height: size.height * 0.8,
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: SvgPicture.asset(
                                    "assets/icons/back_arrow.svg"))),
                        IconCard("assets/icons/sun.svg"),
                        IconCard("assets/icons/icon_2.svg"),
                        IconCard("assets/icons/icon_3.svg"),
                        IconCard("assets/icons/icon_4.svg"),
                      ],
                    )),
                    PlantImage(size),
                  ],
                ),
              ),
             TitlePrice(),
              Row(
                children: [
                  Expanded(child:  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(18))))),
                    onPressed:(){},
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 16),),
                    ),),),
                  Expanded(child: TextButton(onPressed: () {
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Description"),
                  ),
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
