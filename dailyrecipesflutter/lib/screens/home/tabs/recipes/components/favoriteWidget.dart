import 'package:dailyrecipesflutter/constants.dart';
import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: IconButton(
        icon: (_isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
        color: (_isFavorited ? favoriteColor : unfavoriteColor),
        onPressed: _toggleFavorite,
        iconSize: 20.0,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      if(_isFavorited)
        _isFavorited = false;
      else 
        _isFavorited = true;
    });
  }
}

