import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

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

  const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Container Customization",
          style: TextStyle(
            color: Colors.white,
          ),
        ), // Set your custom title here
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color:Colors.white,
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(topLeft: Radius.elliptical(11, 11),  bottomRight:Radius.elliptical(12, 15) ),
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
              boxShadow:[
                BoxShadow(
                  blurRadius: 51,
                  color: Colors.blue,

                )
              ]
            ),
          ),
        ),
      ), // Replace with your desired body content
    );
  }
}
