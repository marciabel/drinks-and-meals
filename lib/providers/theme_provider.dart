import 'package:flutter/material.dart';
import 'package:drinks_and_meals/themes/default_theme.dart';


class ThemeProvider extends ChangeNotifier{

  ThemeData currentTheme;

  ThemeProvider({
    required bool isDarkMode
  }):currentTheme = (isDarkMode) ? ThemeData.dark(): ThemeData.light();


  setLight(){
      print('setLight');
      currentTheme = DefaultTheme.defaultTheme;
      notifyListeners();
  }
  
  setDark(){
      print('setLight');
      currentTheme = DefaultTheme.darkTheme;
      notifyListeners();
  }

} 