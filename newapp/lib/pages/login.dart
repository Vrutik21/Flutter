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
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      title: Center(child: Text("Umang",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    ),
          backgroundColor: Colors.white,
          body: Center(
            child:SingleChildScrollView(         
                child: Column(
                  children: [
                    Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
                    SizedBox(
                      height: 20,
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
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "USERNAME", hintText: "Enter Username"),
                            onChanged: (value) {
                              name = value;
                              setState(() {});
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "PASSWORD", hintText: "Enter password"),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () async{
                              setState(() {
                                changedButton = true;
                              });
                              await Future.delayed(Duration(seconds: 1));
                              Navigator.pushNamed(context, MyRoutes.homeRoute);
                            },
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
                                decoration: BoxDecoration(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(8))),
                          )
                          // ElevatedButton(
                          //   child: Text("LOGIN"),
                          //   style: TextButton.styleFrom(
                          //       minimumSize: Size(80, 40),
                          //       backgroundColor: Colors.deepPurple),
                          //   onPressed: () {
                          //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                          //   },
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
    );
  }
}
