import 'package:dailyrecipesflutter/constants.dart';
import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/cardsListView.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Recipes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kTextColor,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          CardsListView(),
        ],
      ),
    );
  }
}