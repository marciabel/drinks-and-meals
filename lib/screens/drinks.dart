import 'package:drinks_and_meals/providers/new_drinks.dart';
import 'package:flutter/material.dart';
import 'package:drinks_and_meals/widgets/common_widgets.dart';
import 'package:drinks_and_meals/widgets/drinks_widgets.dart';
import 'package:provider/provider.dart';

class DrinksScreen extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final drinksProvider = Provider.of<DrinkProvider>(context);
    final GlobalKey<RefreshIndicatorState> _refresIndicatorKey =
        GlobalKey<RefreshIndicatorState>();

    return MediaQuery.removePadding(
      context: context,
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
              return await drinksProvider.getNewDrinks();
            },
            child: Scaffold(
              appBar: CustomAppBar(title: 'Meals'),
              backgroundColor: Color.fromARGB(255, 255, 255, 254),
              body: ListView.builder(
                controller: _scrollController,
                itemCount: drinksProvider.drinks.length + (isLoading ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index < drinksProvider.drinks.length) {
                    return DrinksCardWidget(
                        drink: drinksProvider.drinks[index]);
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ),
          if (drinksProvider.isLoading)
            Positioned(
                bottom: 40,
                left: size.width * 0.5 - 30,
                child: const _LoadingIcon())
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
            color: Colors.white.withOpacity(0.9), shape: BoxShape.circle),
        child: const CircularProgressIndicator(color: Colors.blueAccent));
  }
}
