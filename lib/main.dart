import 'package:appnavigator/screens/FirstScreen.dart';
import 'package:appnavigator/screens/HomeScreen.dart';
import 'package:appnavigator/screens/SecondScreen.dart';
import 'package:appnavigator/screens/WelcomeScreen.dart';
// import 'package:appnavigator/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const HomeScreen(),
      initialRoute: '/home',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/home': (context) => const HomeScreen(),
        '/welcome': (context) =>  WelcomeScreen(),
      },
    );
  }
}
