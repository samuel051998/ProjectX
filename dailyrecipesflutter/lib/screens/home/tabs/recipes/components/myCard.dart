import 'package:dailyrecipesflutter/constants.dart';
import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/cardListElement.dart';
import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/cardListElementWithFavorite.dart';
import 'package:flutter/material.dart';

import 'cardListElementTest.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260.0,
      child: Card(
        elevation: 3.0,
        shadowColor: Colors.grey.withOpacity(0.3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 260.0,
              height: 130.0,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(4.0)),
                  child: Image(
                  image: AssetImage('assets/images/image1.jpg'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Caramel Pecan Fudige',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      ),
                    ),
                  ),
                  CardListElement(),
                  CardListElement(),
                  CardListElementTest(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}