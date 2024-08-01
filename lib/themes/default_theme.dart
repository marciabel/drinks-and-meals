import 'package:flutter/material.dart';

class DefaultTheme {
  static const Color lightBackground = Color.fromARGB(255, 255, 255, 254);
  static final Color darkBackground = Color.fromARGB(255, 35, 41, 70);

  static final ThemeData defaultTheme = ThemeData.light().copyWith(
      primaryColor: Colors.greenAccent,

      appBarTheme: AppBarTheme(
          backgroundColor: darkBackground,
          iconTheme: IconThemeData(color: lightBackground)),

      listTileTheme: ListTileThemeData(iconColor: darkBackground),

      scaffoldBackgroundColor: lightBackground,

      switchTheme: SwitchThemeData(),

      drawerTheme: DrawerThemeData(),

      );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.greenAccent,

      appBarTheme: const AppBarTheme(backgroundColor: Color.fromARGB(255, 3, 5, 16)),
      
      scaffoldBackgroundColor:darkBackground,

      listTileTheme: const ListTileThemeData(iconColor: Color.fromARGB(255, 255, 255, 254)),

      cardTheme: CardTheme(
        color: darkBackground,
      );
}
