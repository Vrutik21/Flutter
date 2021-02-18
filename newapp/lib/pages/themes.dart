import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: Colors.cyan,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.deepPurpleAccent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
