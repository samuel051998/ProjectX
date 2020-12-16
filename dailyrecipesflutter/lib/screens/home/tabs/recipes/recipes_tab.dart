import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/drawer.dart';
import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/topappbar.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class RecipesTab extends StatelessWidget {
  static String routeName = '/recipes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: TopAppBar(),
      ),
      body: Body(),
    );
  }
}