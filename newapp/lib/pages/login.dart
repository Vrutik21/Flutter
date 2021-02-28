import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:newapp/pages/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name;
  bool changedButton = false;

  final formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (formkey.currentState.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.dashRoute);
      setState(() {
        changedButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Umang",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Image.asset("assets/images/login_image.png",
                      fit: BoxFit.cover),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome $name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(children: [
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "USERNAME",
                              hintText: "Enter Username"),
                          validator: (value) {
                            if (value.isEmpty) {
                              return ("Username cannot be empty");
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "PASSWORD",
                                hintText: "Enter password"),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Password cannot be empty";
                              } else if (value.length < 6) {
                                return "Password length should be atleast 6";
                              }
                              return null;
                            }),
                        SizedBox(
                          height: 20,
                        ),
                        Material(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(8),
                          child: InkWell(
                            onTap: () => moveToHome(context),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: changedButton ? 40 : 80,
                              height: 40,
                              alignment: Alignment.center,
                              child: changedButton
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                            ),
                          ),
                        ),
                      ])

                      // ElevatedButton(
                      //   child: Text("LOGIN"),
                      //   style: TextButton.styleFrom(
                      //       minimumSize: Size(80, 40),
                      //       backgroundColor: Colors.deepPurple),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      // ),

                      )
                ],
              ),
            ),
          ),
        ));
  }
}
