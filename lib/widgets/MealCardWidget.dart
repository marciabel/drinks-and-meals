import 'package:drinks_and_meals/screens/meal_details_screen.dart';
import 'package:flutter/material.dart';

class MealCardWidget extends StatelessWidget {
  final String imageUrl;
  final String strYoutube;
  final String title;
  final String strArea;
  final String strDescription;
  final String subtitle = 'Click for more info';

  MealCardWidget({required this.imageUrl, required this.title, required this.strYoutube, required this.strDescription, required this.strArea});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MealDetailScreen(
                  meal: {
                    'strMealThumb': imageUrl,
                    'strMeal': title, 
                    'strDescription': strDescription, // pass the meal description
                    'strYoutube': strYoutube, 
                    'strArea': strArea,
                  }
                ),
              ),
            );
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.darken),
              ),
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
