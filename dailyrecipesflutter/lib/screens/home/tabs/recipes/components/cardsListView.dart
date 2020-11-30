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
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
        ],
      ),
    );
  }
}