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

    var arrNames = ['apple','ball', 'cat', 'dog','eagle', 'funny', 'girrafe', 'heyna', 'icecreamn', 'joker'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
            style:TextStyle(
                color: Colors.white
            ),"Contact list"), // Set your custom title here
      ),

      body: ListView.separated(itemBuilder: (context, index){
        return ListTile(
          leading: Text('$index'),
          title: Text(arrNames[index]),
          subtitle: Text('Number'),
          trailing: Icon(Icons.add),
        );
      },
        itemCount: arrNames.length,
        separatorBuilder: (context,index) {
          return Divider(height: 60,);
        },// reverse: true,
      ),

    );
  }
}


