import 'package:flutter/material.dart' show Brightness, BuildContext, Colors, MaterialApp, ThemeData, ThemeMode, Widget, runApp;
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart' show BuildContext, State, StatefulWidget, Widget;
import 'package:google_fonts/google_fonts.dart';
import 'package:newapp/dashboard.dart';
import 'package:newapp/pages/login.dart';
import 'package:newapp/pages/routes.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      "/":(context) => LoginPage(),
      
      MyRoutes.dashRoute:(context) => Dashboard(),
      MyRoutes.loginRoute:(context) => LoginPage(),
      },
    );
  }
}
