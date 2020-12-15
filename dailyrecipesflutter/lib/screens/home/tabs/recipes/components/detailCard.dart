import 'package:dailyrecipesflutter/constants.dart';
import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final String _imagePath;
  final String _text;
  DetailCard(this._imagePath, this._text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        color: kBackgroundColor,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  child: Hero(
                    child: Image(
                      image: AssetImage(_imagePath),
                      height: 400.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    tag: _text,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 500.0,
                decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}