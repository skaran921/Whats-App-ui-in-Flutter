import 'package:flutter/material.dart';
import './screen/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "What'sapp UI",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Color(0Xff075e54),
            accentColor: Color(0Xff25D366),
            tabBarTheme: TabBarTheme(
              labelColor: Colors.white,
            ),
            textTheme: TextTheme(
                title: TextStyle(color: Colors.white, fontSize: 16.0),
                body1: TextStyle(color: Colors.black),
                button: TextStyle(color: Colors.white)),
            bottomAppBarColor: Colors.white),
        home: Home());
  }
}
