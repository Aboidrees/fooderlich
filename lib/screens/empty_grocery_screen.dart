import 'package:flutter/material.dart';
import 'package:fooderlich/generated/assets.dart';
import 'package:fooderlich/models/models.dart';
import 'package:provider/provider.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO 3: Replace and add layout widgets

    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(Assets.fooderlichAssetsEmptyList),
              ),
            ),
            const Text('No Groceries', style: TextStyle(fontSize: 21.0)),
            const SizedBox(height: 16.0),
            const Text(
              'Shopping for ingredients?\n'
              'Tap the + button to write them down!',
              textAlign: TextAlign.center,
            ),
            MaterialButton(
              textColor: Colors.white,
              color: Colors.green,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              onPressed: Provider.of<AppStateManager>(context, listen: false).goToRecipes,
              child: const Text("Browse Recipes"),
            ),
          ],
        ),
      ),
    );
  }
}
