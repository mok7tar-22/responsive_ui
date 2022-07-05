import 'package:flutter/material.dart';
import 'package:responsive_ui_login_signup_page/models/constants.dart';

class ORDivider extends StatelessWidget {
  const ORDivider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.8,
      child: Row(
        children: [
          Expanded(
              child: Divider(
                height: 1.5,
                color: Colors.black87,
              )),
          SizedBox(
            width: 10,
          ),
          Text("OR",style:TextStyle(fontWeight: FontWeight.bold,color: kPrimaryColor),),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Divider(
                height: 1.5,
                color: Colors.black87,
              ))
        ],
      ),
    );
  }
}