import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/favoriteWidget.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';

class CardListElementTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.access_time,
        color: kPrimaryColor,
        size: 17.0,
      ),
      title: Text(
        '25 mins',
        style: TextStyle(
          color: kSecondaryColor,
          fontSize: 15,
        ),
      ),
      dense: true,
      trailing: FavoriteWidget(),
    );
  }
}