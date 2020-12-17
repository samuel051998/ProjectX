import 'package:flutter/material.dart';
import '../../../../../constants.dart';

// ignore: must_be_immutable
class TopAppBar extends StatelessWidget {
  Icon actionIcon = new Icon(Icons.add);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      /*title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Builder(
          builder: (context) => GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Icon(
                Icons.menu,
              ),
            ),
          )
        ),
      ),*/
      
      backgroundColor: Colors.transparent,
      actions: <Widget>[
        new IconButton(
          splashColor: Colors.transparent,
          icon: actionIcon,
          highlightColor: Colors.transparent,
          onPressed: () {},
          color: kPrimaryColor,
        )
      ],
      iconTheme: IconThemeData(color: Colors.black),
    );
  }
}