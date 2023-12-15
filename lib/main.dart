import 'package:drinks_and_meals/screens/meals_list.dart';

import 'screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
      const MyApp()
  ); 


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drinks&Meals',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home':(context) => const HomeScreen(),
        'meals':(context) => MealsList(),
      }
    );
  }
}
