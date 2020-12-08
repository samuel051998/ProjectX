import 'package:flutter/material.dart';

class DetailCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('assets/images/card1.jpg'),
            height: 400.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}