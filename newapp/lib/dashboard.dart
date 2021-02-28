import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(3.0),
            children: <Widget>[
              makedashboarditem(
                  "Scheduler",
                  IconButton(
                      icon: Icon(
                        Icons.calendar_today,
                        size: 90,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      })),
              makedashboarditem(
                  "Profile",
                  IconButton(
                      icon: Icon(
                        Icons.person,
                        size: 90,
                      ),
                      onPressed: () {})),
              makedashboarditem(
                  "Analysis",
                  IconButton(
                      icon: Icon(
                        CupertinoIcons.graph_square,
                        size: 90,
                      ),
                      onPressed: () {})),
              makedashboarditem(
                  "Edit Meeting",
                  IconButton(
                      icon: Icon(
                        CupertinoIcons.person_3_fill,
                        size: 90,
                      ),
                      onPressed: () {})),
            ],
          ),
        ),
      ),
    );
  }

  Card makedashboarditem(String title, IconButton icon) {
    return Card(
      color: Colors.deepPurpleAccent,
      elevation: 5.0,
      margin: new EdgeInsets.all(8.0),
      child: new InkWell(
        onTap: () {
          setState(() {});
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            SizedBox(height: 40.0),
            Container(
              child: icon,
            ),
            SizedBox(height: 60.0),
            new Center(
              child: new Text(title,
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
