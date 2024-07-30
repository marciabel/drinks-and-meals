import 'package:drinks_and_meals/models/meal_info.dart';
import 'package:drinks_and_meals/screens/meal_details_screen.dart';
import 'package:flutter/material.dart';

class MealCardWidget extends StatelessWidget {
  final MealInfo meal;
  final String subtitle = 'Click for more info';

  MealCardWidget({required this.meal});

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
                builder: (context) => MealDetailScreen(meal: {
                  'strMealThumb': meal.strMealThumb,
                  'strMeal': meal.strMeal,
                  'strDescription': meal.strDescription,
                  'strYoutube': meal.strYoutube,
                  'strArea': meal.strArea,
                }),
              ),
            );
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(meal.strMealThumb),
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
                  meal.strMeal,
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
