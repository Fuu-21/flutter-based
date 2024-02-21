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
        backgroundColor: Colors.blue,
        title: Text(
            style:TextStyle(
                color: Colors.white
            ),"Standard Topic"), // Set your custom title here
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.red,
          elevation: 13,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Hello World ppl", style: TextStyle(fontSize: 25),),
          ),
        ),
      ), // Replace with your desired body content
    );
  }
}

