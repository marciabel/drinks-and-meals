import 'package:drinks_and_meals/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:drinks_and_meals/widgets/DrinksCardWidget.dart';

class DrinksScreen extends StatelessWidget {
  final List drinksList = [
    {
      "idDrink": "11690",
      "titleDrink": "Mai Tai",
      "imgDrink":
          "https://www.thecocktaildb.com/images/media/drink/twyrrp1439907470.jpg",
      "strInstructions":
          "Shake all ingredients with ice. Strain into glass. Garnish and serve with straw.",
      "ingredients": [
        {"name": "Malibu rum", "measure": "2 parts"},
        {"name": "Tropicana", "measure": "2 parts"},
        {"name": "Cranberry juice", "measure": "1 part"},
      ],
    },
    {
      "idDrink": "11390",
      "titleDrink": "Frozen Mint Daiquiri",
      "imgDrink":
          "https://www.thecocktaildb.com/images/media/drink/jrhn1q1504884469.jpg",
      "strInstructions":
          "Combine all ingredients with 1 cup of crushed ice in an electric blender. Blend at a low speed for a short length of time. Pour into an old-fashioned glass and serve.",
      "ingredients": [
        {"name": "Malibu rum", "measure": "2 parts"},
        {"name": "Tropicana", "measure": "2 parts"},
        {"name": "Cranberry juice", "measure": "1 part"},
      ],
    },
    {
      "idDrink": "13128",
      "titleDrink": "Diesel",
      "imgDrink":
          "https://www.thecocktaildb.com/images/media/drink/sxrrqq1454512852.jpg",
      "strInstructions":
          "Pour the lager first then add the blackcurrant cordial. Top up with the cider. The colour sholud be very dark approaching the colour of Guiness.",
      "ingredients": [
        {"name": "Malibu rum", "measure": "2 parts"},
        {"name": "Tropicana", "measure": "2 parts"},
        {"name": "Cranberry juice", "measure": "1 part"},
      ],
    },
    {
      "idDrink": "11025",
      "titleDrink": "Amaretto And Cream",
      "imgDrink":
          "https://www.thecocktaildb.com/images/media/drink/dj8n0r1504375018.jpg",
      "strInstructions":
          "Shake well with cracked ice, strain contents into a cocktail glass, and serve.",
      "ingredients": [
        {"name": "Malibu rum", "measure": "2 parts"},
        {"name": "Tropicana", "measure": "2 parts"},
        {"name": "Cranberry juice", "measure": "1 part"},
      ],
    },
    {
      "idDrink": "17141",
      "titleDrink": "Smut",
      "imgDrink":
          "https://www.thecocktaildb.com/images/media/drink/rx8k8e1504365812.jpg",
      "strInstructions": "Throw it all together and serve real cold.",
      "ingredients": [
        {"name": "Malibu rum", "measure": "2 parts"},
        {"name": "Tropicana", "measure": "2 parts"},
        {"name": "Cranberry juice", "measure": "1 part"},
      ],
    },
    {
      "idDrink": "17230",
      "titleDrink": "Gin Rickey",
      "imgDrink":
          "https://www.thecocktaildb.com/images/media/drink/s00d6f1504883945.jpg",
      "strInstructions":
          "Half-fill a tall glass with ice. Mix the gin and Grenadine together and pour over the ice. Add the lime or lemon juice and top off with soda water. Decorate the glass with lime and/or lemon slices.",
      "ingredients": [
        {"name": "Malibu rum", "measure": "2 parts"},
        {"name": "Tropicana", "measure": "2 parts"},
        {"name": "Cranberry juice", "measure": "1 part"},
      ],
    },
    {
      "idDrink": "15224",
      "titleDrink": "Malibu Twister",
      "imgDrink":
          "https://www.thecocktaildb.com/images/media/drink/2dwae41504885321.jpg",
      "strInstructions": "Add rum & trister then, add cranberry jucie,stir",
      "ingredients": [
        {"name": "Malibu rum", "measure": "2 parts"},
        {"name": "Tropicana", "measure": "2 parts"},
        {"name": "Cranberry juice", "measure": "1 part"},
      ],
    }
  ];

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Drinks'),
      backgroundColor: Color.fromARGB(255, 35, 41, 70),
      body: ListView.builder(
        itemCount: drinksList.length + (isLoading ? 1 : 0),
        itemBuilder: (context, index) {
          return DrinksCardWidget(
            imageUrl: drinksList[index]["imgDrink"],
            title: drinksList[index]["titleDrink"],
            instructions: drinksList[index]["strInstructions"],
            ingredients: drinksList[index]["ingredients"],
          );
        },
      ),
    );
  }
}
