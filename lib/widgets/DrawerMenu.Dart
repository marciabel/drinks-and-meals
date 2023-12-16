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
                color: Colors.black,
              ),
              child: Center(
                child: Image.network(
                  'https://images.unsplash.com/photo-1492683513054-55277abccd99?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
