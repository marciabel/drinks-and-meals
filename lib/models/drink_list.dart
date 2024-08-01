import 'drink_info.dart';

class ListDrinkModel {
  static List<DrinkInfo> fromJson(List<dynamic> jsonList) {
    List<DrinkInfo> drinksList =
        jsonList.map((json) => DrinkInfo.fromJson(json)).toList();
    return drinksList;
  }
}
