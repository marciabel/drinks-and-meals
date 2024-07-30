import 'package:drinks_and_meals/providers/new_meals.dart';
import 'package:flutter/material.dart';
import 'package:drinks_and_meals/widgets/common_widgets.dart';
import 'package:drinks_and_meals/widgets/meals_widgets.dart';
import 'package:provider/provider.dart';

class MealsList extends StatefulWidget {
  @override
  _MealsListState createState() => _MealsListState();
}

class _MealsListState extends State<MealsList> {
  // List<MealInfo> = .meals;
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final mealsProvider  = Provider.of<MealsProvider>(context);
    final GlobalKey<RefreshIndicatorState> _refresIndicatorKey = GlobalKey<RefreshIndicatorState>();

    return MediaQuery.removePadding(context: context,
      removeTop: true,
      removeBottom: true,
      child: Stack(
        children: [
          RefreshIndicator(
            color: Colors.white,
            backgroundColor: Colors.red,
            strokeWidth: 4.0,
            displacement: 40,                     
            key: _refresIndicatorKey,            
            onRefresh: () async {
              print('onRefresh........');
              print('mealsProvider.meals.length........${mealsProvider.meals.length}');
              return await mealsProvider.getNewMeals();              
            },
            child: Scaffold(
              appBar: CustomAppBar(title: 'Meals'),
              backgroundColor: Color.fromARGB(255, 255, 255, 254),
              body: ListView.builder(
                controller: _scrollController,
                itemCount: mealsProvider.meals.length + (isLoading ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index < mealsProvider.meals.length) {
                    return MealCardWidget(
                      meal: mealsProvider.meals[index]
                    );
                  }
            return const SizedBox.shrink();
                },
              ),
            ),
          ),     
          if(mealsProvider.isLoading)
            Positioned(
              bottom: 40,
              left: size.width * 0.5 - 30,
              child: const _LoadingIcon()
            )
        ],
      ),
    );
  }
}



class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle
      ),
      child: const CircularProgressIndicator( color: Colors.blueAccent )
    );
  }
}
