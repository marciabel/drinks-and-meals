class MealInfo {
  String idMeal;
  String strMeal;
  String strArea;
  String strMealThumb;
  String strYoutube;

  MealInfo({
    required this.idMeal,
    required this.strMeal,
    required this.strArea,
    required this.strMealThumb,
    required this.strYoutube,
  });

  factory MealInfo.fromJson(Map<String, dynamic> json) => MealInfo(
      idMeal: json["idMeal"],
      strMeal: json["strMeal"],
      strArea: json["strArea"],
      strMealThumb: json["strMealThumb"],
      strYoutube: json["strYoutube"],
  );

  get strDescription => null;
}