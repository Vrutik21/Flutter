import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/pages/routes.dart';
import 'package:newapp/widgets/drawer.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(100.0),
            child: (Text(
              "Umang",
              style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor: 1.1,
            )),
          ),
          backgroundColor: Colors.deepPurpleAccent,
          bottom: TabBar(
            tabs: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "HOME",
                  textScaleFactor: 1,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "AGENDA",
                  textScaleFactor: 1,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "DISCOVER",
                  textScaleFactor: 1,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
            indicatorColor: Colors.white,
          ),
        ),
        drawer: MyDrawer(),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                primary: false,
                crossAxisSpacing: 10,
                children: <Widget>[
                  Card(
                    elevation: 5,
                    color: Colors.deepPurpleAccent,
                    shadowColor: Colors.deepPurple,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.loginRoute);
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: 140,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Scheduler",
                            textScaleFactor: 1.4,
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    color: Colors.deepPurpleAccent,
                    shadowColor: Colors.deepPurple,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(
                            CupertinoIcons.person_fill,
                            size: 140,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Profile",
                            textScaleFactor: 1.4,
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    color: Colors.deepPurpleAccent,
                    shadowColor: Colors.deepPurple,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(
                            CupertinoIcons.graph_square,
                            size: 140,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Analytics",
                            textScaleFactor: 1.4,
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    color: Colors.deepPurpleAccent,
                    shadowColor: Colors.deepPurple,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(
                            CupertinoIcons.person_3_fill,
                            size: 140,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Edit Meeting",
                            textScaleFactor: 1.4,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
