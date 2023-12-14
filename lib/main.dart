import 'screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_repo_guide/providers/theme_provider.dart';

//import 'package:flutter_application_1/screens/desing_screen.dart'

void main() {
  WidgetsFlutterBinding.ensureInitialized();


  //runApp(const MyApp());

  runApp(
    //  MultiProvider(
    //   providers: [        
    //     ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider(isDarkMode: Preferences.darkmode)),                        
    //   ],
      const MyApp()
    //)
  ); 


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drinks&Meals',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home':(context) => const HomeScreen(),
      }
    );
  }
}
