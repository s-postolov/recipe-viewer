import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:recipe/models/recipe_summary.dart';

class RecipeCard extends StatelessWidget {
  final RecipeSummary recipe;
  final VoidCallback onTap;

  RecipeCard({required this.recipe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            Expanded(
              child: CachedNetworkImage(
                imageUrl: recipe.strRecipeThumb,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (c, _) => Center(child: CircularProgressIndicator()),
                errorWidget: (c, u, e) => Icon(Icons.error),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                recipe.strRecipe,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
