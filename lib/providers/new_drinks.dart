import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/drink_info.dart';
import '../models/drink_list.dart';

class DrinkProvider extends ChangeNotifier {
  final String _baseUrl = 'https://meal-and-drinks.onrender.com/api-express/v1';
  List<DrinkInfo> drinks = [];

  bool isLoading = false;

  DrinkProvider() {
    print('DrinkProvider initializing... ');
    isLoading = false;
    this.getNewDrinks();
  }

  Future<void> getNewDrinks() async {
    isLoading = true;
    notifyListeners();

    final url = Uri.parse('$_baseUrl/drinks/randomDrinks');

    print('url future: $url');

    final response = await http.get(url);

    print(response.body);

    final data = json.decode(response.body);
    print('--------------------------------------------------');
    print(response);
    print('--------------------------------------------------');

    final dataDecoded = ListDrinkModel.fromJson(data["results"]);

    this.drinks = [...dataDecoded];

    print('--------------------------------------------------');
    print(this.drinks);
    isLoading = false;
    notifyListeners();
  }
}
