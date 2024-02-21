import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Standard Topic",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/akali_sketch22.png'),
            backgroundColor: Colors.black,
          ),
        ),
      ), // Replace with your desired body content
    );
  }
}

