import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final List<Map<String, dynamic>> _menuItems = [
    {'route': 'home', 'title': 'Home', 'subtitle': 'Home + counter app', 'icon': Icons.home},
    {'route': 'drinks', 'title': 'Drinks', 'subtitle': 'Drinks + counter app', 'icon': Icons.local_drink},
    {'route': 'meals', 'title': 'Meals', 'subtitle': '', 'icon': Icons.restaurant_menu},
  ];

  DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeaderAlternative(),
          ...ListTile.divideTiles(
            context: context,
            tiles: _menuItems.map(
              (item) => ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 16,
                ),
                dense: true,
                minLeadingWidth: 25,
                title: Text(item['title']!,
                    style: const TextStyle(
                        fontFamily: 'FuzzyBubbles', fontSize: 18)),
                subtitle: Text(item['subtitle'] ?? '',
                    style: const TextStyle(
                        fontFamily: 'RobotoMono', fontSize: 12)),
                leading: Icon(item['icon'], color: Colors.deepPurple[400]),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, item['route']!);
                },
              ),
            ).toList(),
          )
        ],
      ),
    );
  }
}

class _DrawerHeaderAlternative extends StatelessWidget {
  const _DrawerHeaderAlternative({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.deepPurple[400],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/drawer_background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
