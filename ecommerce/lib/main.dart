import 'package:ecommerce/OTPscreen.dart';
import 'package:ecommerce/contants.dart';
import 'package:ecommerce/home_screen.dart';
import 'package:ecommerce/profilescreen.dart';
import 'package:ecommerce/signin.dart';
import 'package:ecommerce/signup.dart';
import 'package:ecommerce/splashscreen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
      title: 'flutter demo',
      theme: theme(),
    );
  }
}

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(
              headline6: TextStyle(color: Color(0xff8b8b8b), fontSize: 18))),
      textTheme: TextTheme(
          bodyText1: TextStyle(color: ktextcolor),
          bodyText2: TextStyle(color: ktextcolor)),
      visualDensity: VisualDensity.adaptivePlatformDensity);
}
