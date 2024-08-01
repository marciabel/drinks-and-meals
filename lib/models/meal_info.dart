class MealInfo {
  String idMeal;
  String strMeal;
  String strArea;
  String strMealThumb;
  String strYoutube;
  String strInstructions;

  MealInfo({
    required this.idMeal,
    required this.strMeal,
    required this.strArea,
    required this.strMealThumb,
    required this.strYoutube,
    required this.strInstructions
  });

  factory MealInfo.fromJson(Map<String, dynamic> json) { 
    return MealInfo(
      idMeal: json["idMeal"],
      strMeal: json["strMeal"],
      strArea: json["strArea"],
      strMealThumb: json["strMealThumb"],
      strYoutube: json["strYoutube"],
      strInstructions: json["strInstructions"],
    );
  }
}