import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/application_theme.dart';
import 'package:islami_app/layout/home.dart';
import 'package:islami_app/moduls/hadeth/hadeth_details.dart';
import 'package:islami_app/moduls/quran/quran_details.dart';
import 'package:islami_app/moduls/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
          SplashScreen.routeName: (context) => SplashScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
          QuranDetails.routeName: (context) => QuranDetails(),
          HadethDetails.routeName: (context) => HadethDetails(),
        });
  }
}
