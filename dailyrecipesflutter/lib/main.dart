import 'package:dailyrecipesflutter/screens/home/home_screen.dart';
import 'package:dailyrecipesflutter/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Recipes App',
      //theme: theme(),
      home: SignUpScreen(),
      initialRoute: SignUpScreen.routeName,
      routes: {
        '/home': (context) => HomeScreen(),
      },
    );
  }
}