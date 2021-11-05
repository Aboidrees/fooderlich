import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fooderlich/components/components.dart';
import 'package:fooderlich/models/models.dart';

class TodayRecipeListView extends StatelessWidget {
  final List<ExploreRecipe> recipes;

  const TodayRecipeListView({Key? key, required this.recipes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recipe of the Day 🍳', style: Theme.of(context).textTheme.headline1),
          const SizedBox(height: 16.0),
          Container(
            height: 400.0,
            child: ListView.separated(
              itemBuilder: (BuildContext context, index) {
                final recipe = recipes[index];
                return _buildCard(recipe);
              },
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: recipes.length,
            ),
            color: Colors.transparent,
          )
        ],
      ),
    );
  }

  Widget _buildCard(ExploreRecipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card3) {
      return Card3(recipe: recipe);
    } else {
      throw Exception('This card doesn\'t exist yet');
    }
  }
}
