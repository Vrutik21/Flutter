import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/widgets/drawer.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Umang";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [            
                      Container(
                         child:IconButton(icon:Icon(
                          CupertinoIcons.calendar,size: 140,),
                          onPressed: (){},                          
                        ),

                        width: 180,
                        height: 180,
                        color: Colors.deepPurpleAccent,
                        
                      ),
                      Container(
                        child: IconButton(icon:Icon(
                          CupertinoIcons.person_fill,size: 140,),
                          onPressed: (){},
                          
                        ),
                        width: 180,
                        height: 180,
                        color: Colors.deepPurpleAccent,
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: IconButton(icon:Icon(
                          CupertinoIcons.graph_square,
                          size: 140,),
                          onPressed: (){},
                          
                        ),
                        
                        width: 180,
                        height: 180,
                        color: Colors.deepPurpleAccent,
                        
                      ),
                      
                      Container(
                        child: IconButton(icon:Icon(
                          CupertinoIcons.person_3_fill,
                          size: 140,),
                          onPressed: (){},
                        ),
                        width: 180,
                        height: 180,
                        color: Colors.deepPurpleAccent,
                      ),
                    ]),
              ),
            ]),
            drawer: MyDrawer(),
      ),
      
    ));
    
  }
}
