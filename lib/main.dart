import 'package:flutter/material.dart';
import 'package:portfolio/info.dart';
import 'package:portfolio/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: name,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        // primaryColor: Color(0xFF263b60),
        // primaryColorLight: Color(0xFF53658e),
        // primaryColorDark: Color(0xFF001636),
        // accentColor: Color(0xFF3d7f77),
        primaryColor: Colors.cyan[900],
        fontFamily: "GoogleSansRegular",
      ),
      home: HomePage(),
    );
  }
}
