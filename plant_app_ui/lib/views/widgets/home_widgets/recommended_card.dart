import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_ui/models/constants.dart';
import 'package:plant_app_ui/models/plant.dart';
import 'package:plant_app_ui/views/screens/details_screen.dart';

class RecommendedCard extends StatelessWidget {
  Plant plant;
  RecommendedCard(this.size,this.plant ,{Key? key}) : super(key: key);
  Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: size.width * 0.4,
        height: size.height * 0.3,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(plant.image,fit: BoxFit.fill,))),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight:Radius.circular(20)  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(plant.name),
                        Text("\$${plant.price}")
                      ],
                    ),
                   SizedBox(),
                   Text(plant.country,)
                 //   Expanded(child: FittedBox(fit: BoxFit.cover,child: Text("\$450",style:TextStyle(color: kPrimaryColor.withOpacity(0.5),fontSize: 16,fontWeight: FontWeight.bold))))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
