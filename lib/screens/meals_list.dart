import 'package:drinks_and_meals/widgets/CustomAppBar.dart';
import 'package:drinks_and_meals/widgets/meal_card_widget.dart';
import 'package:flutter/material.dart';

class MealsList extends StatefulWidget {
  @override
  _MealsListState createState() => _MealsListState();
}

class _MealsListState extends State<MealsList> {
  List<Map<String, dynamic>> mealItems = [
    {
      "idMeal": "52840",
      "strMeal": "Clam chowder",
      "strArea": "American",
      "strMealThumb":
          "https://www.themealdb.com/images/media/meals/rvtvuw1511190488.jpg",
      "strYoutube": "https://www.youtube.com/watch?v=fEN_fm6kX6k",
      "strDescription":
          "Clam chowder is a creamy soup featuring clams, potatoes, onions, and sometimes bacon, known for its rich flavor and comforting warmth.Clam chowder is a creamy soup featuring clams, potatoes, onions, and sometimes bacon, known for its rich flavor and comforting warmth.Clam chowder is a creamy soup featuring clams, potatoes, onions, and sometimes bacon, known for its rich flavor and comforting warmth.Clam chowder is a creamy soup featuring clams, potatoes, onions, and sometimes bacon, known for its rich flavor and comforting warmth.Clam chowder is a creamy soup featuring clams, potatoes, onions, and sometimes bacon, known for its rich flavor and comforting warmth.Clam chowder is a creamy soup featuring clams, potatoes, onions, and sometimes bacon, known for its rich flavor and comforting warmth.Clam chowder is a creamy soup featuring clams, potatoes, onions, and sometimes bacon, known for its rich flavor and comforting warmth.Clam chowder is a creamy soup featuring clams, potatoes, onions, and sometimes bacon, known for its rich flavor and comforting warmth."
    },
    {
      "idMeal": "52815",
      "strMeal": "French Lentils With Garlic and Thyme",
      "strArea": "French",
      "strMealThumb":
          "https://www.themealdb.com/images/media/meals/vwwspt1487394060.jpg",
      "strYoutube": "https://www.youtube.com/watch?v=CrlTS1mJQMA",
      "strDescription":
          "French Lentils With Garlic and Thyme is a classic French dish known for its earthy flavors and aromatic blend of lentils seasoned with garlic and thyme."
    },
    {
      "idMeal": "52894",
      "strMeal": "Battenberg Cake",
      "strArea": "British",
      "strMealThumb":
          "https://www.themealdb.com/images/media/meals/ywwrsp1511720277.jpg",
      "strYoutube": "",
      "strDescription":
          "Battenberg Cake is a British sponge cake with a distinctive pink and yellow checkered pattern covered in marzipan, providing a delightful almond flavor."
    },
    {
      "idMeal": "52783",
      "strMeal": "Rigatoni with fennel sausage sauce",
      "strArea": "Italian",
      "strMealThumb":
          "https://www.themealdb.com/images/media/meals/qtqvys1468573168.jpg",
      "strYoutube": "https://www.youtube.com/watch?v=45dpOfESxr8",
      "strDescription":
          "Rigatoni with fennel sausage sauce is a traditional Italian pasta dish featuring rigatoni pasta topped with a savory sausage and fennel-infused tomato sauce."
    },
    {
      "idMeal": "52895",
      "strMeal": "English Breakfast",
      "strArea": "British",
      "strMealThumb":
          "https://www.themealdb.com/images/media/meals/utxryw1511721587.jpg",
      "strYoutube": "https://www.youtube.com/watch?v=FXjYU2Ensck",
      "strDescription":
          "English Breakfast is a hearty meal featuring eggs, bacon, sausages, beans, tomatoes, mushrooms, and toast, offering a combination of savory flavors."
    },
    {
      "idMeal": "53006",
      "strMeal": "Moussaka",
      "strArea": "Greek",
      "strMealThumb":
          "https://www.themealdb.com/images/media/meals/ctg8jd1585563097.jpg",
      "strYoutube": "https://www.youtube.com/watch?v=8U_29i9Qp5U",
      "strDescription":
          "Moussaka is a Greek baked casserole dish made with layers of eggplant, minced meat, and creamy béchamel sauce, providing a rich and hearty flavor."
    },
    {
      "idMeal": "52927",
      "strMeal": "Montreal Smoked Meat",
      "strArea": "Canadian",
      "strMealThumb":
          "https://www.themealdb.com/images/media/meals/uttupv1511815050.jpg",
      "strYoutube": "https://www.youtube.com/watch?v=g5oCDoyxbBk",
      "strDescription":
          "Montreal Smoked Meat is a Canadian specialty featuring cured and smoked beef brisket seasoned with a blend of spices, offering a distinct smoky flavor."
    },
    {
      "idMeal": "52831",
      "strMeal": "Chicken Karaage",
      "strArea": "Japanese",
      "strMealThumb":
          "https://www.themealdb.com/images/media/meals/tyywsw1505930373.jpg",
      "strYoutube": "https://www.youtube.com/watch?v=XivddFddthc",
      "strDescription":
          "Chicken Karaage is a Japanese fried chicken dish marinated in soy sauce, ginger, and garlic, resulting in crispy, flavorful bite-sized pieces."
    },
    {
      "idMeal": "52806",
      "strMeal": "Tandoori chicken",
      "strArea": "Indian",
      "strMealThumb":
          "https://www.themealdb.com/images/media/meals/qptpvt1487339892.jpg",
      "strYoutube": "https://www.youtube.com/watch?v=-CKvt1KNU74",
      "strDescription":
          "Tandoori chicken is an Indian dish marinated in a blend of yogurt and spices, roasted in a tandoor oven, providing a smoky and tangy flavor."
    },
    {
      "idMeal": "52981",
      "strMeal": "Snert (Dutch Split Pea Soup)",
      "strArea": "Dutch",
      "strMealThumb":
          "https://www.themealdb.com/images/media/meals/9ptx0a1565090843.jpg",
      "strYoutube": "https://www.youtube.com/watch?v=5YV0sJLtLt8",
      "strDescription":
          "Snert, also known as Dutch Split Pea Soup, is a hearty soup made with split peas, vegetables, and often includes smoked sausage, offering a warm and comforting taste."
    },
    {
      "idMeal": "52955",
      "strMeal": "Egg Drop Soup",
      "strArea": "Chinese",
      "strMealThumb":
          "https://www.themealdb.com/images/media/meals/1529446137.jpg",
      "strYoutube": "https://www.youtube.com/watch?v=9XpzHm9QpZg",
      "strDescription":
          "Egg Drop Soup is a simple Chinese soup featuring beaten eggs drizzled into a flavorful broth, creating delicate ribbons, and often garnished with green onions."
    },
    {
      "idMeal": "53010",
      "strMeal": "Lamb Tzatziki Burgers",
      "strArea": "Greek",
      "strMealThumb":
          "https://www.themealdb.com/images/media/meals/k420tj1585565244.jpg",
      "strYoutube": "https://www.youtube.com/watch?v=s7_TF4ZHjPc",
      "strDescription":
          "Lamb Tzatziki Burgers are Greek-style burgers made with ground lamb, seasoned with herbs and spices, topped with tzatziki sauce, offering a unique Mediterranean flavor."
    }
  ];

  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        getMoreData();
      }
    });
  }

  void getMoreData() async {
    if (!isLoading) {
      setState(() => isLoading = true);

      await Future.delayed(Duration(seconds: 2)).then((_) {
        setState(() {
          isLoading = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Meals'),
      backgroundColor: Color.fromARGB(255, 255, 255, 254),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: mealItems.length + (isLoading ? 1 : 0),
        itemBuilder: (context, index) {
          if (index < mealItems.length) {
            return MealCardWidget(
              imageUrl: mealItems[index]["strMealThumb"],
              title: mealItems[index]["strMeal"],
              strArea: mealItems[index]["strArea"],
              strYoutube: mealItems[index]["strYoutube"],
              strDescription: mealItems[index]["strDescription"],
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
