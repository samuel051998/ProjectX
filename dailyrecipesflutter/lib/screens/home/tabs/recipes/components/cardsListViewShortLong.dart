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
          MyCardLong('assets/images/cardLong1.jpg', 'Recipes5'),
          MyCardLong('assets/images/cardLong2.jpg', 'Recipes6'),
          MyCardLong('assets/images/cardLong3.jpg', 'Recipes7'),
          MyCardLong('assets/images/cardLong4.jpg', 'Recipes8'),
        ],
      ),
    );
  }
}