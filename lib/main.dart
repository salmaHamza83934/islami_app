import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
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
    bool isRTL = Intl.defaultLocale == 'ar';
    return MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale("ar"),
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
