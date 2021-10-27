import 'package:flutter/material.dart';
import 'package:fooderlich/components/author_card.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'package:fooderlich/models/explore_recipe.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key, required ExploreRecipe recipe}) : super(key: key);

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350.0, height: 400.0),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/magazine_pics/mag5.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            const AuthorCard(authorName: 'Muhammad Yousif', title: 'Smoothie Connoisseur', imageProvider: AssetImage('assets/profile_pics/222.png')),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16.0,
                    right: 16.0,
                    child: Text('Recipe', style: FooderlichTheme.darkTextTheme.headline1),
                  ),
                  Positioned(
                    left: 16.0,
                    bottom: 70.0,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text('Smoothies', style: FooderlichTheme.darkTextTheme.headline1),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
