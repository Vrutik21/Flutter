import 'package:flutter/material.dart' show Brightness, BuildContext, Colors, MaterialApp, StatelessWidget, ThemeData, ThemeMode, Widget, runApp;
import 'package:google_fonts/google_fonts.dart';
import 'package:newapp/dashboard.dart';
import 'package:newapp/pages/login.dart';
import 'package:newapp/pages/routes.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  int days = 30;
  String name = "Vrutik";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: Colors.cyan,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: GoogleFonts.lato().fontFamily
        ),
        debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),

    
    routes: {
      "/":(context) => Dashboard(),
      
      MyRoutes.dashRoute:(context) => Dashboard(),
      MyRoutes.loginRoute:(context) => LoginPage(),
      },
    );
  }
}
