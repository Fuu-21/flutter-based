import 'package:flutter/material.dart';
import 'package:passing_datas_through_pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  var nameFromHome;
  MyHomePage(this.nameFromHome);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Page no 1."),
        ),
        body: Container(
          child: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center
               ,
               children: [
                 Text("Welcome $nameFromHome!!"),
                 ElevatedButton(
                   onPressed: (){
                     Navigator.pop(context);
                   }, child: Text("Back"),
                 ),
               ],
             ),
          ),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

