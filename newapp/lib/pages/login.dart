import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
        Image.asset("assets/images/login_image.png",
        fit: BoxFit.cover
        ),
        SizedBox(
          height: 20,
        ),
        Text("WELCOME TO UMANG",
        style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold
        ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
            decoration: InputDecoration(
              labelText: "USERNAME",
              hintText: "Enter Username"
              ),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "PASSWORD",
              hintText: "Enter password"
              ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(child: Text("LOGIN"),
          style: TextButton.styleFrom(),
          onPressed: () {
            print("Hello Students");
          } ,
            ),
           ],
          ),
         )
        ],
      )
    );
  }
}