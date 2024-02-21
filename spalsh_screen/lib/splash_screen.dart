import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: Text("Hello FuuChan!!",style: TextStyle(fontSize: 25, color: Colors.white),),),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}