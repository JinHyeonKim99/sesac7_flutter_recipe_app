import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/01_stateLess/domain/model/recipe.dart';

class SavedRecipeCard extends StatelessWidget {
  final Recipe recipe;

  const SavedRecipeCard({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          recipe.name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
