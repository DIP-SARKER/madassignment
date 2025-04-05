import 'package:flutter/material.dart';
// import 'package:madassignment/pages/profileimage.dart';
// import 'package:madassignment/pages/taask12.dart';
// import 'package:madassignment/pages/task13.dart';
import 'package:madassignment/pages/task14.dart';
// import 'package:madassignment/pages/appdrawer.dart';
// import 'package:madassignment/pages/cardspaage.dart';
// import 'package:madassignment/pages/task10.dart';
// import 'package:madassignment/pages/imagescreen.dart';
// import 'package:madassignment/pages/loginscreen.dart';
// import 'package:madassignment/pages/screen1.dart';
// import 'package:madassignment/pages/textview.dart';
// import 'package:madassignment/pages/buttonpage.dart';
// import 'package:madassignment/pages/uniquelist.dart';
// import 'package:madassignment/pages/helloworld.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color.fromARGB(255, 119, 82, 223),
        disabledColor: Colors.grey[600],
        hintColor: const Color.fromARGB(255, 42, 15, 117),
      ),
      home: SwipeListScreen(),
    );
  }
}
