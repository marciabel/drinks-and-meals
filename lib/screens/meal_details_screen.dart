import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  //final Map<String, String> meal;

  MealDetailScreen(
    //{required this.meal}
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text(meal['name'] ?? 'Meal Detail'),
        title: Text('fnfiwfewbe'),

      ),
      body: Center(
        child: Text('Detailed description of the meal goes here'),
      ),
    );
  }
}