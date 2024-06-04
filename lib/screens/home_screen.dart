import 'package:flutter/material.dart';

import 'package:drinks_and_meals/widgets/common_widgets.dart';

import 'package:drinks_and_meals/screens/meals_list.dart';
import 'package:drinks_and_meals/screens/drinks.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Drinks&Meals'),
      drawer: DrawerMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://www.mccormick.com/-/media/project/oneweb/mccormick-us/mccormick/articles/info-graphic.jpg?rev=9300eb3510ca46e6af3abbf13b960985&vd=20210901T181349Z&hash=4F1DBA9346469A176C9A53F2F6ADD9CE',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MenuOptionWidget(
                text: 'Drinks',
                imageUrl:
                    'https://www.thecocktaildb.com/images/media/drink/fwpd0v1614006733.jpg',
                onTapAction: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrinksScreen(),
                  ),
                ),
              ),
              MenuOptionWidget(
                text: 'Meals',
                imageUrl:
                    'https://www.themealdb.com/images/media/meals/vvstvq1487342592.jpg',
                onTapAction: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MealsList(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Just one small positive thought in the morning can change your whole day',
              style: TextStyle(
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                shadows: [
                  Shadow(
                    offset: Offset(0.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
