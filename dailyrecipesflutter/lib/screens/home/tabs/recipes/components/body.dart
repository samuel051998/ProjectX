import 'package:dailyrecipesflutter/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Recipes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTextColor,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}