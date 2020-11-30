import 'package:flutter/material.dart';
import '../../../../../constants.dart';

class CardListElementWithFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.access_time,
              color: kPrimaryColor,
              size: 15.0,
            ),
          ),
          Text(
            '25 mins',
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: 15,
            ),
          ),
          Spacer(flex: 1),
          Icon(
            Icons.favorite_border,
            color: kSecondaryColor,
            size: 18.0,
          )
        ],
      ),
    );
  }
}