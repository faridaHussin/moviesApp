import 'package:flutter/material.dart';
import 'package:project_route/core/ThemeApplicaton.dart';
import 'package:project_route/moduls/HomeLayout.dart';
import 'package:project_route/moduls/splash_screen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ApplicatonTheme.darkTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeLayout.rountName: (context) => HomeLayout(),
      },

    );
  }
}

