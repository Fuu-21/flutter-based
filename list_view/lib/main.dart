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

    var arrNames = ['apple','ball', 'cat', 'dog','eagle', 'funny'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
            style:TextStyle(
                color: Colors.white
            ),"Standard Topic"), // Set your custom title here
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: ListView(
      //     scrollDirection: Axis.vertical,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("This is the list view",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("This is the 2nd list view",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("This is the 3rd list view",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("This is the 4th list view",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("This is the 5th list view",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),),
      //       ),
      //     ],
      //   ),
      body: ListView.separated(itemBuilder: (context, index){
        return Row(
          children: [
            Text(arrNames[index],style: TextStyle(fontSize: 25),),
            Text(arrNames[index],style: TextStyle(fontSize: 25),),
            Text(arrNames[index],style: TextStyle(fontSize: 25),),
            Text(arrNames[index],style: TextStyle(fontSize: 25),),
            Text(arrNames[index],style: TextStyle(fontSize: 25),),
            Text(arrNames[index],style: TextStyle(fontSize: 25),),
          ],
        );
      },
        itemCount: arrNames.length,
        separatorBuilder: (context,index) {
        return Divider(height: 200,);
        },// reverse: true,
    ),

    );
    }
  }


