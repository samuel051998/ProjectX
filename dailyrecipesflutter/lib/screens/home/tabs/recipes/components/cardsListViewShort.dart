import 'package:flutter/material.dart';
import 'myCardShort.dart';

class CardsListViewShort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(11.0),
        children: <MyCardShort>[
          MyCardShort('assets/images/card1.jpg', 'Recipes1'),
          MyCardShort('assets/images/card2.jpg', 'Recipes2'),
          MyCardShort('assets/images/card3.jpg', 'Recipes3'),
          MyCardShort('assets/images/card4.jpg', 'Recipes4'),
        ],
      ),
    );
  }
}