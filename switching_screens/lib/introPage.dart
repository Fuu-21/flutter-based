
import 'package:flutter/material.dart';
import 'package:switching_screens/main.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome party people", style: TextStyle(fontSize: 23),),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MyHomePage();
              } ));
            }, child: Text("Next")),
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
  
}