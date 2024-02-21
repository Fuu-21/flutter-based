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

    var arrColors = [Colors.red,
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.yellow,
    Colors.indigo,
    Colors.grey,
     ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Grid View",
            style:TextStyle(
                color: Colors.white
            ),), // Set your custom title here
      ),
      body: Container(
        child: GridView.count(crossAxisCount: 3,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
          children: [
            Container(color: arrColors[1],),
            Container(color: arrColors[2],),
            Container(color: arrColors[3],),
            Container(color: arrColors[4],),
            Container(color: arrColors[5],),
            Container(color: arrColors[6],),
            Container(color: arrColors[7],),
            Container(color: arrColors[0],),

            ],),
      ),
      ); // Replace with your desired body content
  }
}

