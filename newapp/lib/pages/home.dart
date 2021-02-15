import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Vrutik";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Depression management")),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of my first $name app"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
