import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme{
  static ThemeData lightTheme =ThemeData(
    primaryColor: Color(0xFFB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFFB7935F),
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 35,
      ),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 30
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),

    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      elevation: 0,
      color: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
  static ThemeData darkTheme =ThemeData(
    primaryColor: Color(0xFFB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFFB7935F),
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 35,
      ),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 30
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),

    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      elevation: 0,
      color: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
}