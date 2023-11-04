import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_route/moduls/HomeLayout.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery
        .of(context)
        .size;
    Timer(
        Duration(
          seconds: 5,
        ), () {
      Navigator.pushReplacementNamed(context, HomeLayout.rountName);
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Image.asset('assets/images/splash_screen.png',
            fit: BoxFit.fill,
          )),
    );
  }
}
