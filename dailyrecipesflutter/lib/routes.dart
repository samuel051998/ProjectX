import 'screens/home/home_screen.dart';
import 'screens/signup/signup_screen.dart';
import 'package:flutter/widgets.dart';


final Map<String, WidgetBuilder> routes = {
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen()
};