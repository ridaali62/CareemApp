import 'package:careemapp/Cab.dart';
import 'package:careemapp/HomePage.dart';
import 'package:careemapp/Splashscreen.dart';
import 'package:careemapp/food.dart';
import 'package:careemapp/loginPage.dart';
import 'package:careemapp/screens/hhome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
