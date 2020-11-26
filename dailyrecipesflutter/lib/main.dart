import 'package:dailyrecipesflutter/routes.dart';
import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';

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
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}