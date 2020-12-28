import 'package:dailyrecipesflutter/constants.dart';
import 'package:flutter/material.dart';

class IngredientListElement extends StatelessWidget {
  final String _imagePath;
  final String _name;
  final String _quantity;

  IngredientListElement(this._imagePath, this._name, this._quantity);

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
              _name,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: kTextColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                _quantity,
                style: TextStyle(
                  letterSpacing: 1.0,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w300,
                  color: kTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}