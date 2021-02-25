import 'package:flutter/material.dart';
import 'package:newapp/models/catalog.dart';
import 'package:newapp/widgets/ItemWidget.dart';
import 'package:newapp/widgets/drawer.dart';

// Day-11 we learned about BuildContext context(element ),3 Trees and constraints.

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  int days = 1;
  String name = "Umang";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catalog App",style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
          );
        },
      ),
    ),
      drawer: MyDrawer(),
    );
  }
}
