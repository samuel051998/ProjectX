import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final String _imagePath;
  final String _text;

  DetailCard(this._imagePath, this._text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Hero(
              child: Image.asset(
                _imagePath,
              ),
              tag: _text,
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)),
              child: Container(
                width: double.infinity,
                height: 200,
                child: Card(
                  color: Colors.red,
                  child: Column(
                    children: <Widget>[
                      Text(
                        _text,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
