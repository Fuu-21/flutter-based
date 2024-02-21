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
          "Inkwell Widget",
          style: TextStyle(  // <-- Highlighted correction here
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print("Container ma 1 choti thickeko");
          },
          onLongPress: () {
            print("Container ma dheraii ber thicheko");
          },
          onDoubleTap: () {
            print("Container ma 2 choti thickko");
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.black,
            child: Center(
              child: InkWell(
                onTap: () {
                  print("Container bhitra ko text thicheko");
                },
                child: Text(
                  "Thichhhne thau",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
