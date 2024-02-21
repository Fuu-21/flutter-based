import 'package:authentication/features/presentations/pages/login_page.dart';
import 'package:authentication/features/presentations/widgets/form_container_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose(){
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("SIGNUP")),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SignUp",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              FormContainerWidget(
                controller: _usernameController,
                hintText: "UserName",
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
              SizedBox(
                height: 10,
              ),
              FormContainerWidget(
                controller: _emailController,
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
                controller: _passwordController,
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
              SizedBox(height: 30,),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text("SignUp", style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Arleady have an account?"),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: _signUp,
                  //       (){
                  //     Navigator.push(context, MaterialPageRoute(builder: (builder) => LoginPage()));
                  //   },
                  //   child: Text("Login", style:TextStyle(color:Colors.blue, fontWeight: FontWeight.bold ),),
                  // )
                ],)
            ],
          ),
        ),
      ),
    );
  }
  void _signUp()async{
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null){
      print("User created succesfully!!");
      Navigator.pushNamed(context, "/home");
    }else{
      print("SOme error happended");
    }
  }
}
