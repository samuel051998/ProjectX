import 'package:flutter/material.dart';
import 'components/body.dart';

class RecipesTab extends StatelessWidget {
  static String routeName = '/recipes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}