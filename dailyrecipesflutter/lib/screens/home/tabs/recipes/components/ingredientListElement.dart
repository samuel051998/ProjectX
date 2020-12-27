import 'package:dailyrecipesflutter/constants.dart';
import 'package:flutter/material.dart';

class IngredientListElement extends StatelessWidget {
  final String _imagePath;
  final String _text;

  IngredientListElement(this._imagePath, this._text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: Container(
        height: 30.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage(_imagePath),
              width: 70.0,
              height: 60.0,
              fit: BoxFit.fitWidth,
            ),
            Text(
              _text,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
                color: kTextColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}