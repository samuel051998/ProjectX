import 'package:dailyrecipesflutter/screens/home/tabs/explore/components/mySearch.dart';
import 'package:flutter/material.dart';

class ExploreTab extends StatelessWidget {
  static String routeName = '/explore';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: MySearch(),
        ),
      ),
    );
  }
}