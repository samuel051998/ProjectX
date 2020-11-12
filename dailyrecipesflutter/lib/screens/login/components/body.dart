import 'package:dailyrecipesflutter/screens/login/components/video_widget.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        VideoWidget()
      ],
    );
  }
}