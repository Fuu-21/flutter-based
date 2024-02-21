import 'dart:async';

import 'package:body_mass_index/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(
          builder: (context)=> MyHomePage(),));
    });
  }
  @override

  Widget build(BuildContext context) {
    // TODO: implement build]
    return Scaffold(
      body: Row(
        children: [
          Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset('assets/images/bmi_index.jpg',
                    height: 130,
                    width: 410,
                    ),
                  ),
                    Text(" (Your weight is noone's concern) ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
                ],
              )
          ,),
        ],

      ),
      );
  }
}