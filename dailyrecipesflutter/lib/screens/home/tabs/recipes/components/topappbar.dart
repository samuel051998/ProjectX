import 'package:flutter/material.dart';
import '../../../../../constants.dart';

// ignore: must_be_immutable
class TopAppBar extends StatelessWidget {
  Icon actionIcon = new Icon(Icons.add);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
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