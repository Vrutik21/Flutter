import 'package:flutter/material.dart';
import 'package:newapp/widgets/drawer.dart';

// Day-11 we learned about BuildContext context(element),3 Trees and constraints.

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  int days = 1;
  String name = "Umang";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Umang",style: TextStyle(fontWeight: FontWeight.bold),
        )
        ),
        ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days day of our $name app",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
