import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/cards.dart';
import 'package:flutter/material.dart';

class CardsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Cards(),
          Cards(),
          Cards(),
          Cards(),
        ],
      ),
    );
  }
}
