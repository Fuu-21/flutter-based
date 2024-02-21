import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'), // Pass the 'title' parameter here
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  var emailText = TextEditingController();
  var passText = TextEditingController();

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Input Fetcher from user", // Set your custom title here
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                enabled: true,
                decoration: InputDecoration(
                  hintText: "Enter Email!",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  // suffixText: "Username exists!",
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black),
                  prefixIcon: Icon(Icons.email, color: Colors.black),
                ),
              ),
              Container(height: 11),
              TextField(
                controller: passText,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  String uEmail = emailText.text.toString();
                  String uPass = passText.text.toString();

                  print("Email: $uEmail, Password: $uPass");
                },
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
