import 'package:dailyrecipesflutter/constants.dart';
import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/cardsListViewShort.dart';
import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/cardsListViewShortLong.dart';
import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/filtersListView.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Text(
              'Hi Man!',
              style: TextStyle(
                color: kSecondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 11.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'Make your own food,\nstay at ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'home',
                          style: TextStyle(
                            color: Color(0xFFEAB33E),
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                /*GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Filters(),
                      )
                    );
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    child: Icon(
                      Icons.filter,
                    ),
                  ),
                )*/
              ],
            ),
          ),
          FIlterListView(),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Popular Recipes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kTextColor,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          CardsListViewShort(),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Most Viewed Recipes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kTextColor,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          CardsListViewLong(),
        ],
      ),
    );
  }
}