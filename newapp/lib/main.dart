import 'package:flutter/material.dart' show AppBarTheme, Brightness, BuildContext, Colors, IconThemeData, MaterialApp, StatelessWidget, ThemeData, ThemeMode, Widget, runApp;
import 'package:google_fonts/google_fonts.dart';
import 'package:newapp/pages/home.dart';
import 'package:newapp/pages/login.dart';
import 'package:newapp/pages/routes.dart';
import 'package:newapp/pages/themes.dart';

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
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
   
    routes: {
      "/":(context) => LoginPage(),
      MyRoutes.homeRoute:(context) => HomePage(),
      MyRoutes.loginRoute:(context) => LoginPage(),
      },
    );
  }
}
