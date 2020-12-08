import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              dense: true,
            ),
          )
        ],
      ),
    );
  }
}