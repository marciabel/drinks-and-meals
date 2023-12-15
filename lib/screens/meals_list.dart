import 'package:drinks_and_meals/widgets/MealCardWidget.dart';
import 'package:flutter/material.dart';

class MealsList extends StatefulWidget {
  @override
  _MealsListState createState() => _MealsListState();
}

class _MealsListState extends State<MealsList> {
  
  // List<Map<String, dynamic>> mealItems = [
  // for (int i = 1; i <= 20; i++)
  //   {
  //     'name': 'Meal $i',
  //     'description': 'This is a description for Meal $i',
  //     'imageUrl': 'https://via.placeholder.com/150',
  //   },
  // ];

  List<Map<String, dynamic>> mealItems = [
 {
    "idMeal": "52840",
    "strMeal": "Clam chowder",
    "strArea": "American",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/rvtvuw1511190488.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=fEN_fm6kX6k"
 },
 {
    "idMeal": "52815",
    "strMeal": "French Lentils With Garlic and Thyme",
    "strArea": "French",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/vwwspt1487394060.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=CrlTS1mJQMA"
 },
 {
    "idMeal": "52894",
    "strMeal": "Battenberg Cake",
    "strArea": "British",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/ywwrsp1511720277.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=aB41Q7kDZQ0"
 },
 {
    "idMeal": "52783",
    "strMeal": "Rigatoni with fennel sausage sauce",
    "strArea": "Italian",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/qtqvys1468573168.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=45dpOfESxr8"
 },
 {
    "idMeal": "52967",
    "strMeal": "Home-made Mandazi",
    "strArea": "Kenyan",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/thazgm1555350962.jpg",
    "strYoutube": ""
 },
 {
    "idMeal": "52895",
    "strMeal": "English Breakfast",
    "strArea": "British",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/utxryw1511721587.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=FXjYU2Ensck"
 },
 {
    "idMeal": "53006",
    "strMeal": "Moussaka",
    "strArea": "Greek",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/ctg8jd1585563097.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=8U_29i9Qp5U"
 },
 {
    "idMeal": "52927",
    "strMeal": "Montreal Smoked Meat",
    "strArea": "Canadian",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/uttupv1511815050.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=g5oCDoyxbBk"
 },
 {
    "idMeal": "52831",
    "strMeal": "Chicken Karaage",
    "strArea": "Japanese",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/tyywsw1505930373.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=XivddFddthc"
 },
 {
    "idMeal": "52806",
    "strMeal": "Tandoori chicken",
    "strArea": "Indian",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/qptpvt1487339892.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=-CKvt1KNU74"
 },
 {
    "idMeal": "52981",
    "strMeal": "Snert (Dutch Split Pea Soup)",
    "strArea": "Dutch",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/9ptx0a1565090843.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=5YV0sJLtLt8"
 },
 {
    "idMeal": "52955",
    "strMeal": "Egg Drop Soup",
    "strArea": "Chinese",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/1529446137.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=9XpzHm9QpZg"
 },
 {
    "idMeal": "53010",
    "strMeal": "Lamb Tzatziki Burgers",
    "strArea": "Greek",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/k420tj1585565244.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=s7_TF4ZHjPc"
 },
 {
    "idMeal": "52989",
    "strMeal": "Christmas Pudding Trifle",
    "strArea": "British",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/r33cud1576791081.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=jRfyNQs5qhU"
 },
 {
    "idMeal": "52842",
    "strMeal": "Broccoli & Stilton soup",
    "strArea": "British",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/tvvxpv1511191952.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=_HgVLpmNxTY"
 },
 {
    "idMeal": "53046",
    "strMeal": "Portuguese custard tarts",
    "strArea": "Portuguese",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/vmz7gl1614350221.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=lWLCxui1Mw8"
 },
 {
    "idMeal": "53019",
    "strMeal": "Pierogi (Polish Dumplings)",
    "strArea": "Polish",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/45xxr21593348847.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=lyqDmUroZrI"
 },
 {
    "idMeal": "53048",
    "strMeal": "Mee goreng mamak",
    "strArea": "Malaysian",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/xquakq1619787532.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=pOJEmDBgtSk"
 },
 {
    "idMeal": "52858",
    "strMeal": "New York cheesecake",
    "strArea": "American",
    "strMealThumb": "https://www.themealdb.com/images/media/meals/swttys1511385853.jpg",
    "strYoutube": "https://www.youtube.com/watch?v=tspdJ6hxqnc"
 },
];

  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _scrollController.addListener(() {
  //     if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
  //       getMoreData();
  //     }
  //   });
  // }

  // void getMoreData() async {
  //   if (!isLoading) {
  //     setState(() => isLoading = true);
      
  //     // Add additional 10 new items within a delay (imitate network delay)
  //     await Future.delayed(Duration(seconds: 2)).then((_) {
  //       setState(() {
  //         mealItems.addAll(List<String>.generate(10, (index) => 'Item ${mealItems.length + index}'));
  //         isLoading = false;
  //       });
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: mealItems.length + (isLoading ? 1 : 0),
        itemBuilder: (context, index) {
          // if (index == mealItems.length) {
          //   return Center(child: CircularProgressIndicator());
          // }
          // return ListTile(
          //   title: Text(mealItems[index]),
          // );
          return MealCardWidget(
            imageUrl: mealItems[index]["strMealThumb"],
            title: mealItems[index]["strMeal"],
            //description: mealItems[index]['description'],
        );

        },
      ),
    );
  }
}