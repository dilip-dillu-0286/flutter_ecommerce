import 'package:ecommerce/body.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  static String routename = "/splashscreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }
}
