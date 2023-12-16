import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final String title;
  final String imageUrl;
  //final List<String> ingredients;
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
      //backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[50],
        title: Text(
          title,
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          //color: Colors.deepPurple[100],
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200.0,
                width: 200.0,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Instructions',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                color: Colors.deepPurple[50],
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
                              ingredients[index]["name"],
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Spacer(),
                            Text(
                              ingredients[index]["measure"],
                              style: TextStyle(fontSize: 16.0),
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
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                color: Colors
                    .deepPurple[50], // Cambia el color según tu preferencia
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    instructions,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
