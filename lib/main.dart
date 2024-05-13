import 'package:drinks_and_meals/screens/drinks.dart';
import 'package:drinks_and_meals/screens/meals_list.dart';

import 'screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());|
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Drinks&Meals',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => const HomeScreen(),
          'drinks': (context) => DrinksScreen(),
          'meals': (context) => MealsList(),
        });
  }
}
