import 'package:dailyrecipesflutter/screens/profile/profile_tab.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TopAppBar extends StatelessWidget {
  Icon actionIcon = new Icon(Icons.add);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileTab(),
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile/profile1.jpg'),
            ),
          ),
        )
      ],
      iconTheme: IconThemeData(color: Colors.black),
    );
  }
}