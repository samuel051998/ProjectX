import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class FilterButton extends StatefulWidget {
  final String imagePath;
  final String text;

  const FilterButton(this.imagePath, this.text);

  @override
  _FilterButtonState createState() => _FilterButtonState(imagePath, text);
}

class _FilterButtonState extends State<FilterButton> {
  bool isPress = false;
  final String _imagePath;
  final String _text;

  List<Color> _colorsActive = [Color(0xFFF6BD0F), Color(0xFFFED431)];
  List<Color> _colorsInactive = [Color(0xFFFEF8E6), Color(0xFFFEF8E7)];
  List<double> _stops = [0.0, 0.7];

  _FilterButtonState(this._imagePath, this._text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: () => setState(() => isPress = !isPress),
        child: Container(
          width: 120.0,
          decoration: BoxDecoration(
            gradient: isPress
                ? LinearGradient(colors: _colorsActive, stops: _stops)
                : LinearGradient(colors: _colorsInactive, stops: _stops),
            borderRadius: BorderRadius.all(Radius.circular(17.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage(_imagePath),
                  width: 25.0,
                  height: 25.0,
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
        ),
      ),
    );
  }
}
