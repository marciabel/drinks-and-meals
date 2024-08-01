import 'package:drinks_and_meals/providers/new_drinks.dart';
import 'package:drinks_and_meals/providers/new_meals.dart';
import 'package:drinks_and_meals/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:drinks_and_meals/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:drinks_and_meals/helpers/preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ChangeNotifierProvider(create: (BuildContext context) => MealsProvider()),
    ChangeNotifierProvider(create: (BuildContext context) => DrinkProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Drinks&Meals',
        theme: Provider.of<ThemeProvider>(context).currentTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => const HomeScreen(),
          'drinks': (context) => DrinksScreen(),
          'meals': (context) => MealsList(),
        });
  }
}
