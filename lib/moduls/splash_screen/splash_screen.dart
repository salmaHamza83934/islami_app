import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/layout/home.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName='splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/splash.png',
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
