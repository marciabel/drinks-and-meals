import 'package:flutter/material.dart';
import 'package:drinks_and_meals/themes/default_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme = DefaultTheme.defaultTheme;

  void toggleTheme() {
    currentTheme = currentTheme.brightness == Brightness.light
        ? DefaultTheme.darkTheme
        : DefaultTheme.defaultTheme;
    notifyListeners();
  }
}
