import 'package:flutter/material.dart';
import 'package:project_10/fourth_page.dart';
import 'package:project_10/home_page.dart';
import 'package:project_10/second_page.dart';
import 'package:project_10/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        SecondPage.id: (context) => const SecondPage(),
        ThirdPage.id: (context) => const ThirdPage(),
        FourthPage.id: (context) => const FourthPage(),
      },
    );
  }
}
