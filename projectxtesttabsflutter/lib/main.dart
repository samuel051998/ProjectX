import 'package:flutter/material.dart';
import './firstPage.dart' as first;
import './secondPage.dart' as second;
import './thirdPage.dart' as third;

void main() {
  runApp(new MaterialApp(
    home: new MyTabs(),
  ));
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter tabs demo'),
        backgroundColor: Colors.deepOrange,
      ),
      bottomNavigationBar: new Material(
        color: Colors.deepOrange,
        child: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.accessibility_new)),
            new Tab(icon: new Icon(Icons.favorite)),
            new Tab(icon: new Icon(Icons.local_pizza)),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new first.First(),
          new second.Second(),
          new third.Third()
        ],
      ),
    );
  }
}