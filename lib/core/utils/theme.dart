import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  dividerColor: Colors.grey.shade400,
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      color: Colors.black,
      fontWeight: FontWeight.w600,
  fontFamily: GoogleFonts.fredoka().fontFamily,
    ),
    headlineMedium: TextStyle(
      fontSize: 30,
      color: Colors.black,
      fontWeight: FontWeight.w600,
  fontFamily: GoogleFonts.fredoka().fontFamily,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.fredoka().fontFamily,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.fredoka().fontFamily,
    ),
    bodyLarge: TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.fredoka().fontFamily,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color(0xff070E1F),
  scaffoldBackgroundColor: Color(0xff070E1F),
  dividerColor: Colors.grey.shade400,
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontFamily: GoogleFonts.fredoka().fontFamily,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontFamily: GoogleFonts.fredoka().fontFamily,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.fredoka().fontFamily,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.fredoka().fontFamily,
    ),
    bodyLarge: TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.fredoka().fontFamily,
    ),
  ),
);
