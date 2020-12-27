import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/ingredientsListView.dart';
import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/ratingLabel.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../../../../../constants.dart';

class ContentDetailCard extends StatelessWidget {
  final String _text;
  ContentDetailCard(this._text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Flexible(
            child: Text(
              _text,
              style: TextStyle(
                color: kTextColor,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          subtitle: Text(
            'In Breakfast',
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: 13.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          trailing: RatingLabel(),
          dense: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile/profile1.jpg'),
            ),
            title: Text(
              'Samuele Giaccone',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
                color: kTextColor,
              ),
            ),
            subtitle: Text(
              'Nutrition',
              style: TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.normal,
                color: kSecondaryColor,
              ),
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SmoothStarRating(
                  allowHalfRating: false,
                  onRated: (v) {},
                  starCount: 5,
                  rating: 5,
                  size: 20.0,
                  isReadOnly: true,
                  color: Color(0xFFF6BD0F),
                  borderColor: Color(0xFFF6BD0F),
                  spacing: 0.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 3.0),
                  child: Text(
                    '555 upvoted',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 11.0,
                      color: kSecondaryColor,
                    ),
                  ),
                )
              ],
            ),
            dense: true,
          ),
        ),
        /* ############### INGREDIENTS ############### */
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Ingredients',
              style: TextStyle(
                color: kTextColor,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        IngredientsListView(),
      ],
    );
  }
}
