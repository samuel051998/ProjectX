import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/myCard.dart';
import 'package:flutter/material.dart';

class CardsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          MyCard('assets/images/card1.jpg', 'Recipes1'),
          MyCard('assets/images/card2.jpg', 'Recipes2'),
          MyCard('assets/images/card3.jpg', 'Recipes3'),
          MyCard('assets/images/card4.jpg', 'Recipes4'),
        ],
      ),
    );
  }
}