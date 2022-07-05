import 'package:flutter/material.dart';
import 'package:real_estate_ui/views/widgets/menu/contanct_details.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContacDetails(title: "Address", text: "Station Street 5"),
        ContacDetails(title: "Country", text: "Austria"),
        ContacDetails(title: "Email", text: "email@website.com"),
        ContacDetails(title: "Mobile", text: "082345686"),
        ContacDetails(title: "Website", text: "my@website.com")
      ],
    );
  }
}
