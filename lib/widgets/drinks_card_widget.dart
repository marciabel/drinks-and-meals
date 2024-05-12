import 'package:drinks_and_meals/screens/drinkDetail.dart';
import 'package:flutter/material.dart';

class DrinksCardWidget extends StatefulWidget {
  final String imageUrl;
  final String title;
  final List ingredients;
  final String instructions;

  DrinksCardWidget({
    required this.imageUrl,
    required this.title,
    required this.ingredients,
    required this.instructions,
  });

  @override
  _DrinksCardWidgetState createState() => _DrinksCardWidgetState();
}

class _DrinksCardWidgetState extends State<DrinksCardWidget> {
  bool _isFavorite = false;

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
                  title: widget.title,
                  imageUrl: widget.imageUrl,
                  ingredients: widget.ingredients,
                  instructions: widget.instructions,
                ),
              ),
            );
          },
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.title,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 35, 41, 70),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: FadeInImage(
                            placeholder:
                                AssetImage('assets/images/loading.gif'),
                            image: NetworkImage(widget.imageUrl),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 8.0,
                right: 8.0,
                child: IconButton(
                  icon: Icon(
                    _isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: _isFavorite ? Color.fromARGB(255, 255, 0, 0) : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
