import 'package:flutter/material.dart';
import 'package:my_begining/pages/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData("Poppins"),
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

