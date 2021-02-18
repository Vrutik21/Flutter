import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://wallpaperaccess.com/full/1302871.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding:EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                margin: EdgeInsets.zero,
                accountName:Text ("Vrutik Parmar",textScaleFactor: 1.2,style: TextStyle(fontWeight: FontWeight.bold),),
                accountEmail: Text("parmarvrutik1@gmail.com",textScaleFactor: 1.2,style: TextStyle(fontWeight: FontWeight.bold),),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl) ,),
            )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,size: 25,
              ),
              title: Text("Home",textScaleFactor: 1.1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,size: 25,
              ),
              title: Text("Profile",textScaleFactor: 1.1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings_solid,color: Colors.white,size: 25,
              ),
              title: Text("Settings",textScaleFactor: 1.1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,size: 25,
              ),
              title: Text("Contact us",textScaleFactor: 1.1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}