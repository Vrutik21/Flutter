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
              makedashboarditem("Scheduler", Icons.calendar_today,),
              makedashboarditem("Profile", CupertinoIcons.person_fill),
              makedashboarditem("Analysis", CupertinoIcons.graph_square),
              makedashboarditem("Edit Meeting", CupertinoIcons.person_3_fill),
            ],
          ),
        ),
      ),
    );
  }

  Card makedashboarditem(
    String title,
    IconData icon,
  ) {
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
            Container(child: Icon(icon, size: 90)),
            SizedBox(height: 20.0),
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
