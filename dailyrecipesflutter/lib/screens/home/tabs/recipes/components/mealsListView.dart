import 'package:flutter/material.dart';
import 'mealsButton.dart';

class MealsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(11.0),
        children: <MealsButton>[
          MealsButton('assets/images/icons/meals/breakfast.png', 'Breakfast'),
          MealsButton('assets/images/icons/meals/brunch.png', 'Brunch'),
          MealsButton('assets/images/icons/meals/elevenses.png', 'Elevenses'),
          MealsButton('assets/images/icons/meals/lunch.png', 'Lunch'),
          MealsButton('assets/images/icons/meals/tea.png', 'Tea'),
          MealsButton('assets/images/icons/meals/supper.png', 'Supper'),
          MealsButton('assets/images/icons/meals/dinner.png', 'Dinner'),
        ],
      ),
    );
  }
}