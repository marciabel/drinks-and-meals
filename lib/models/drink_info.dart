class DrinkInfo {
  String idDrink;
  String strDrink;
  String strInstructions;
  String strDrinkThumb;
  List<Ingredient> ingredients;

  DrinkInfo(
      {required this.idDrink,
      required this.strDrink,
      required this.strInstructions,
      required this.strDrinkThumb,
      required this.ingredients});

  factory DrinkInfo.fromJson(Map<String, dynamic> json) => DrinkInfo(
        idDrink: json['idDrink'] as String,
        strDrink: json['strDrink'] as String,
        strInstructions: json['strInstructions'] as String,
        strDrinkThumb: json['strDrinkThumb'] as String,
        ingredients: List<Ingredient>.from(json['ingredients']
            .map((ingredient) => Ingredient.fromJson(ingredient))),
      );
}

class Ingredient {
  String name;
  String measure;

  Ingredient({required this.name, required this.measure});

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    json['name'] = json['name'] == null ? '' : json['name'];
    json['measure'] = json['measure'] == null ? '' : json['measure'];
    Ingredient ingredient = Ingredient(
      name: json['name'] as String,
      measure: json['measure'] as String,
    );
    return ingredient;
  }
}
