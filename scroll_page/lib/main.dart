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
            style:TextStyle(
                color: Colors.white
            ),"Scroll View"), // Set your custom title here
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 11),
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 11),
                    height: 200,
                    width: 200,
                    color: Colors.orange,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 11),
                    height: 200,
                    width: 200,
                    color: Colors.grey,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 11),
                    height: 200,
                    width: 200,
                    color: Colors.indigo,
                  ),
              
                        ]
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11,top: 11),
              height: 200,
              // width: 200,
              color: Colors.blue,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              // width: 200,
              color: Colors.yellow,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              // width: 200,
              color: Colors.green,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              // width: 200,
              color: Colors.purple,
            )
          ], ),
        ),
      ), // Replace with your desired body content
    );
  }
}

