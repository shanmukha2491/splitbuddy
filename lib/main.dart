import 'package:flutter/material.dart';
import 'package:splitbuddy/Screens/authScreen.dart';
import 'package:splitbuddy/Screens/home_screen.dart';
import 'package:splitbuddy/Screens/intro_screen.dart';
import 'package:splitbuddy/Screens/login_page..dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/homePage': (context) => const HomeScreen(),
        '/loginPage': (context) => const LoginPage(),
        '/authPage': (context) => const AuthPage()
      },
    );
  }
}
