import 'dart:convert';
import 'meal_info.dart';

class MealList {
  static List<MealInfo> fromJson(String str) {
    final jsonData = json.decode(str);
    final List<dynamic> mealsData = jsonData['data']; // Extraer la lista de la clave "data"
    return mealsData.map((dynamic item) => MealInfo.fromJson(item)).toList();
  }
}