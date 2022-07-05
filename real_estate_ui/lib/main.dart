import 'package:flutter/material.dart';
import 'package:real_estate_ui/models/constant.dart';
import 'package:real_estate_ui/views/screens/home_screen.dart';
import 'package:real_estate_ui/views/widgets/main/main_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor:kBgColor,

      ),
      home: MainSection(),
    );
  }
}

