import 'package:drinks_and_meals/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final String title;
  final String imageUrl;
  final List ingredients;
  final String instructions;

  DrinkDetail({
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 41, 70),
      appBar: CustomAppBar(title: ''),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200.0,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Color.fromARGB(255, 238, 187, 195),
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(200, 255, 255, 254),
                    decoration: TextDecoration.underline,
                  ),
                ),
                Container(
                  child: Column(
                    children: List.generate(
                      ingredients.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ingredients[index].name,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color.fromARGB(200, 255, 255, 254),
                                ),
                              ),
                              Spacer(),
                              Text(
                                ingredients[index].measure,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color.fromARGB(200, 255, 255, 254),
                                ),
                              ),
                              SizedBox(width: 8.0),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Instructions',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(200, 255, 255, 254),
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 23.0),
                Container(
                  color: Color.fromARGB(255, 236, 211, 215),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      instructions,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
