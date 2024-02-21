import 'package:body_mass_index/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();
  var htController = TextEditingController();
  var result = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BMI",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    labelText: "Enter your weight (in kgs):",
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11),
                TextField(
                  controller: htController,
                  decoration: InputDecoration(
                    labelText: "Enter your height (in meters):",
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
               ElevatedButton(
                  onPressed: () {
                    var wt = wtController.text.toString();
                    var ht = htController.text.toString();


                    if (wt != "" &&  ht != "") {
                      double weight = double.parse(wt);
                      double height = double.parse(ht);
                      double bmi = weight / (height * height);

                      var msg = "";

                      if (bmi > 25) {
                        msg = "You are !!" ;

                      } else if (bmi < 18) {
                        msg = "You are duble, patale, sukenas!!" ;

                      } else {
                        msg = "You are thikka!!" ;

                      }

                      setState(() {
                        result = "$msg \nYour BMI is: ${bmi.toStringAsFixed((3))}";
                      });
                    } else {
                      setState(() {
                        result = "Please fill all the required blanks!!!";
                      });
                    }
                  },
                 style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(8.0),
                   ),
                   backgroundColor: Colors.purple,
                 ),
                  child: Text(
                    "Calculate",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(height: 11),
                Center(
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 15, color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
