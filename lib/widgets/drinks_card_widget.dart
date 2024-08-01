import 'package:drinks_and_meals/models/drink_info.dart';
import 'package:drinks_and_meals/providers/theme_provider.dart';
import 'package:drinks_and_meals/screens/drink_detail.dart';
import 'package:drinks_and_meals/widgets/drinks_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrinksCardWidget extends StatefulWidget {
  final DrinkInfo drink;

  DrinksCardWidget({required this.drink});

  @override
  _DrinksCardWidgetState createState() => _DrinksCardWidgetState();
}

class _DrinksCardWidgetState extends State<DrinksCardWidget> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
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
                  title: widget.drink.strDrink,
                  imageUrl: widget.drink.strDrinkThumb,
                  ingredients: widget.drink.ingredients,
                  instructions: widget.drink.strInstructions,
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
                                widget.drink.strDrink,
                                style: TextStyle(
                                    color:
                                        themeProvider.currentTheme.brightness ==
                                                Brightness.dark
                                            ? Color.fromARGB(255, 238, 187, 195)
                                            : Color.fromARGB(255, 35, 41, 70),
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
                            image: NetworkImage(widget.drink.strDrinkThumb),
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
