import 'package:dailyrecipesflutter/routes.dart';
import 'package:dailyrecipesflutter/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Recipes App',
      //theme: theme(),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: LoginScreen.routeName,
      routes: routes,
    );
  }
}