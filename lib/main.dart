import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'services/api_service.dart';

void main() {
  runApp(RecipeViewerApp());
}

class RecipeViewerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TheMealDB Recipes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: CategoriesScreen(),
    );
  }
}
