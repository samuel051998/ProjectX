import 'package:dailyrecipesflutter/constants.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Menu',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFFF6BD0F),
            ),
          ),
          ListTile(
            leading: Icon(Icons.flag),
            title: Text('Saved'),
            dense: true,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            dense: true,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            dense: true,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            dense: true,
          ),
        ],
      ),
    );
  }
}