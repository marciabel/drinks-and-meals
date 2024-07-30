import 'dart:convert';
import 'meal_info.dart';

class MealList {
  static List<MealInfo> fromJson(String str) => 
    List<MealInfo>.from(json.decode(str).map((x) => MealInfo.fromJson(x)));
}