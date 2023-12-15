import 'package:drinks_and_meals/screens/drinkDetail.dart';
import 'package:flutter/material.dart';

class DrinksCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String ingredients;
  final String instructions;

  DrinksCardWidget(
      {required this.imageUrl,
      required this.title,
      required this.ingredients,
      required this.instructions});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Color.fromARGB(255, 0, 0, 72).withAlpha(30),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DrinkDetail(
                  title: title,
                  imageUrl: imageUrl,
                  ingredients: [ingredients],
                  instructions: instructions,
                ),
              ),
            );
            debugPrint('Card tapped.');
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            child: Container(
              child: Padding(
                // Added Padding here
                padding: const EdgeInsets.all(
                    16.0), // Specifies padding on all sides. Adjust value as needed
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(this.title,
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: FadeInImage(
                        placeholder: AssetImage('assets/images/loading.gif'),
                        image: NetworkImage(this.imageUrl),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
