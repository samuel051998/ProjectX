import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/ingredientListElement.dart';
import 'package:flutter/material.dart';

class IngredientsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
      child: Container(
        height: 75.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <IngredientListElement>[
            IngredientListElement('assets/images/ingredients/chocolate2.png', 'Chocolate'),
            IngredientListElement('assets/images/ingredients/coffe.png', 'Coffe'),
            IngredientListElement('assets/images/ingredients/mascarpone.png', 'Mascarpone'),
            IngredientListElement('assets/images/ingredients/oreo.png', 'Biscuits'),
            IngredientListElement('assets/images/ingredients/chocolate2.png', 'Chocolate'),
            IngredientListElement('assets/images/ingredients/chocolate2.png', 'Chocolate'),
          ],
        ),
      ),
    );
  }
}