import 'dart:async';
import 'package:drinks_and_meals/providers/theme_provider.dart';
import 'package:flutter/material.dart';

import 'package:drinks_and_meals/widgets/common_widgets.dart';
import 'package:provider/provider.dart';

class MealDetailScreen extends StatelessWidget {
  final Map meal;

  const MealDetailScreen({required this.meal});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 41, 70),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
                background: FadeInImage(
              placeholder: AssetImage('assets/images/loading.gif'),
              image: NetworkImage(meal['strMealThumb']),
              fit: BoxFit.cover,
            )),
            backgroundColor: Colors.black.withOpacity(0.7),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 10.0),
                    Text(
                      meal['strMeal'],
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 238, 187, 195)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: themeProvider.currentTheme.brightness == Brightness.dark
                          ?  Color.fromARGB(255, 3, 5, 16)
                          : Color.fromARGB(200, 255, 255, 254),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          meal['strInstructions'],
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      "Area: ${meal['strArea']}",
                      style: TextStyle(
                        color: Color.fromARGB(255, 238, 187, 195),
                        fontSize: 20.0,
                      ),
                    ),
                    VideoWidget(youtubeUrl: meal['strYoutube']),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
