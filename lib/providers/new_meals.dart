import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/meal_info.dart';
import '../models/meal_list.dart';

class MealsProvider extends ChangeNotifier {
  final String _baseUrl = 'meal-and-drinks.onrender.com/api-express/v1';

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

    final url = (('$_baseUrl/meals/random')); 

    print('url future: $url');
      
    final response = await http.get(url as Uri); 

    // print(response.body);

    final data = json.decode(response.body);    
        print('--------------------------------------------------');
    print(response);
        print('--------------------------------------------------');
    
    final dataDecoded = MealList.fromJson(data);    

    this.meals = [...dataDecoded];

    print('--------------------------------------------------');
    print(this.meals);
    isLoading = false;
    notifyListeners();
  }
}