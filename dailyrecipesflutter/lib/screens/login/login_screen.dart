import 'package:dailyrecipesflutter/screens/login/components/video_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        VideoWidget()
      ],
    );
    
  }
}