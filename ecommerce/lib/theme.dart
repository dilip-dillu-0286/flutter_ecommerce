import 'package:flutter/material.dart';
import 'contants.dart';

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
