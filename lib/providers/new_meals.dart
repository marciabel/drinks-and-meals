import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/meal_info.dart';
import '../models/meal_list.dart';

class MealsProvider extends ChangeNotifier {
  final String _baseUrl = 'https://meal-and-drinks.onrender.com/api-express/v1';

  bool isLoading= false;

  List<MealInfo> meals = [];

  MealsProvider() {
      print('MealsProvider initializing... ');
      isLoading = false;
      this.getNewMeals();
  }

  Future<void> getNewMeals() async {
    isLoading = true;
    notifyListeners();

    final url = Uri.parse('$_baseUrl/meals/random'); 

    print('url future: $url');
      
    final response = await http.get(url); 

    final data = response.body;
    final mealsList = MealList.fromJson(data);
    
    //final dataDecoded = MealList.fromJson(response.body);    

    this.meals = mealsList;

    isLoading = false;
    notifyListeners();
  }
}