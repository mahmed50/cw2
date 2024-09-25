// home_screen.dart
import 'package:flutter/material.dart';
import 'details_screen.dart';  // Import the DetailsScreen
import 'recipe.dart';          // Import the Recipe model class

class HomeScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      name: 'Spaghetti',
      ingredients: 'Pasta, Tomato Sauce, Cheese',
      instructions: 'Boil pasta. Heat sauce. Combine and top with cheese.',
    ),
    Recipe(
      name: 'Grilled Cheese',
      ingredients: 'Bread, Butter, Cheese',
      instructions: 'Butter bread. Place cheese between bread. Grill.',
    ),
    Recipe(
      name: 'Salad',
      ingredients: 'Lettuce, Tomato, Cucumber, Dressing',
      instructions: 'Chop ingredients and mix with dressing.',
    ),
  ];

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Book'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index].name),
            onTap: () {
              // Navigate to DetailsScreen with the selected recipe
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}




