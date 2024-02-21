import 'package:authentication/features/presentations/pages/sign_up.dart';
import 'package:authentication/features/presentations/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("LOGIN")),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              FormContainerWidget(
                hintText: "Email",
                isPasswordField: false,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email address';
                  }
                  // You can add additional email validation logic if needed
                  return null;
                },
                onFieldSubmitted: (String value) {
                  // Here you can perform an action when the email field is submitted
                  // For example, you can move the focus to the password field
                  // by using FocusScope.of(context).requestFocus() method.
                },
              ),
              SizedBox(height: 10),
              FormContainerWidget(
                hintText: "Password",
                isPasswordField: true,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  // You can add additional password validation logic if needed
                  return null;
                },
                onFieldSubmitted: (String value) {
                  // Here you can perform an action when the password field is submitted
                  // For example, you can submit the form or perform login logic.
                },
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text("Sign Up", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
