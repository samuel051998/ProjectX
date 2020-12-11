import 'package:flutter/material.dart';
import '../../../constants.dart';

// ignore: must_be_immutable
class TopAppBar extends StatelessWidget {

  Widget appBarTitle = new Text("");
  Icon actionIcon = new Icon(Icons.add);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      title: appBarTitle,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      actions: <Widget>[
        new IconButton(
          splashColor: Colors.transparent,
          icon: actionIcon,
          highlightColor: Colors.transparent,
          onPressed: () {},
          color: kPrimaryColor,
        )
      ]
    );
  }
}