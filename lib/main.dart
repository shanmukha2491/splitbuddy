import 'package:flutter/material.dart';
import 'package:splitbuddy/Screens/home_screen.dart';
import 'package:splitbuddy/Screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const IntroPage(),
        '/homePage': (context) => const HomeScreen()
      },
    );
  }
}

