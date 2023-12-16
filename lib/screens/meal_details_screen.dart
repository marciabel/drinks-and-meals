import 'dart:async';

import 'package:drinks_and_meals/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:drinks_and_meals/widgets/VideoWidget.dart';

class MealDetailScreen extends StatelessWidget {
  final Map meal;

  const MealDetailScreen({required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: meal['strMeal']),
      body: ListView(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: NetworkImage(meal['strMealThumb']),
          ),
          const SizedBox(height: 10.0),
          Text(
            meal['strMeal'],
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              meal['strDescription'],
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Text("Area: ${meal['strArea']}"),
          VideoWidget(youtubeUrl: meal['strYoutube'])
        ],
      ),
    );
  }
}
