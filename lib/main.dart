import 'package:e_commerce_frontend/HomePage.dart';
import 'package:e_commerce_frontend/MenCategoryScreen.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
  
      body: MenCategoryScreen(),
      // body: MenClothingScreen(),
      )
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

