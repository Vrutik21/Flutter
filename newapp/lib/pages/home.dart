import 'package:flutter/material.dart';
import 'package:newapp/widgets/drawer.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Umang";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Umang",style: TextStyle(fontWeight: FontWeight.bold),
        )
        ),
        backgroundColor: Colors.deepPurpleAccent,
        ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of my first $name app",style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
