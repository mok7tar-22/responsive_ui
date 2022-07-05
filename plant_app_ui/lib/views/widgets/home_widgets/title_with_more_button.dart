import 'package:flutter/material.dart';
import 'package:plant_app_ui/models/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  final Size size;
  final String title;
  final Function onPress;

  TitleWithMoreButton(
      {Key? key, required this.size, required this.title, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: size.height * 0.09,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: kPrimaryColor.withOpacity(0.23),
                decorationThickness: 5),
          ),
          ElevatedButton(
            onPressed:onPress(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("More",style: TextStyle(color: Colors.white,fontSize: 16),),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))))),
          )
        ],
      ),
    );
  }
}
