import 'dart:convert';

import 'drink_info.dart';

class ListDrinkModel {
  static List<DrinkInfo> fromJson(String str) =>
      List<DrinkInfo>.from(json.decode(str).map((x) => DrinkInfo.fromJson(x)));
}
