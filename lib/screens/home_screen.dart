import 'package:drinks_and_meals/screens/meals_list.dart';
import 'package:drinks_and_meals/widgets/MenuOptionWidget.dart';
import 'package:drinks_and_meals/widgets/DrawerMenu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Drinks&Meals'),
          centerTitle: true,
          backgroundColor: Colors.amber),
      drawer: DrawerMenu(),
      body: ListView(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: NetworkImage(
                'https://www.mccormick.com/-/media/project/oneweb/mccormick-us/mccormick/articles/info-graphic.jpg?rev=9300eb3510ca46e6af3abbf13b960985&vd=20210901T181349Z&hash=4F1DBA9346469A176C9A53F2F6ADD9CE'),
            height: 200,
            fit: BoxFit.fitWidth,
          ),
          Row(
            children: [
              MenuOptionWidget(
                text: 'Drinks',
                imageUrl:
                    'https://images.immediate.co.uk/production/volatile/sites/30/2021/11/GoodFood_Mocktails-8e3c536.jpg?quality=90&webp=true&fit=1300,866',
                onTapAction: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MealsList(),
                    ),
                  )
                },
              ),
              MenuOptionWidget(
                text: 'Meals',
                imageUrl:
                    'https://www.mccormick.com/-/media/project/oneweb/mccormick-us/mccormick/articles/info-graphic.jpg?rev=9300eb3510ca46e6af3abbf13b960985&vd=20210901T181349Z&hash=4F1DBA9346469A176C9A53F2F6ADD9CE',
                onTapAction: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MealsList(),
                    ),
                  )
                },
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Just one small positive thought in the morning can change your whole day',
              style: TextStyle(
                fontSize: 24.0,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print('hice click en el boton');
      //   },
      //   child: const Icon(
      //     Icons.question_mark,
      //     size: 30,
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  // @override
  // State<HomeScreen> createState() => _MyHomePageState();
}
