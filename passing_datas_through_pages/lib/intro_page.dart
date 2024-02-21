
import 'package:flutter/material.dart';
import 'package:passing_datas_through_pages/main.dart';

class IntroPage extends StatelessWidget{

  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome party people", style: TextStyle(fontSize: 23),),
              SizedBox(
                height: 11,),
              TextField(
                controller: nameController,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(nameController.text.toString()) ));
              }, child: Text("Next")),
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}