import 'package:flutter/material.dart';
import 'package:nutritsia_last_version/CategoryView.dart';
import 'package:nutritsia_last_version/Profile.dart';
import 'package:nutritsia_last_version/WelcomeScreen.dart';
import 'package:nutritsia_last_version/Product_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutrltsia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WelcomeScreen(),
    );
  }
}