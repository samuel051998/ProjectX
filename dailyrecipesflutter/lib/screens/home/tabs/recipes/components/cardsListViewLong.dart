import 'package:flutter/material.dart';
import 'myCardLong.dart';

class CardsListViewLong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.0,
      child: ListView(
      scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(11.0),
        children: <Widget>[
          MyCardLong('assets/images/cardLong1.jpg', 'Revolutionary Tiramisù'),
          MyCardLong('assets/images/cardLong2.jpg', "Cupcake with strawsberry's glass"),
          MyCardLong('assets/images/cardLong3.jpg', 'The burger king'),
          MyCardLong('assets/images/cardLong4.jpg', 'Salmon fresh'),
        ],
      ),
    );
  }
}