import 'package:flutter/material.dart';
import 'filterButton.dart';

class FIlterListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(11.0),
        children: <FilterButton>[
          FilterButton('assets/images/icons/meals/breakfast.png', 'Breakfast'),
          FilterButton('assets/images/icons/meals/brunch.png', 'Brunch'),
          FilterButton('assets/images/icons/meals/elevenses.png', 'Elevenses'),
          FilterButton('assets/images/icons/meals/lunch.png', 'Lunch'),
          FilterButton('assets/images/icons/meals/tea.png', 'Tea'),
          FilterButton('assets/images/icons/meals/supper.png', 'Supper'),
          FilterButton('assets/images/icons/meals/dinner.png', 'Dinner'),
        ],
      ),
    );
  }
}