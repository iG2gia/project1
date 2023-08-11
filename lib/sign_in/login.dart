import 'package:app0/sign_in/sign_form.dart'; // Import necessary dependencies
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart'; // Import the Get package

import '../sign_up/SocalCard.dart';

import 'no_account.dart'; // Import any necessary custom widgets

/// Widget that represents the sign-in page
class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  bool remember = false;
  late String password;
  late String email;

  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back(); // Use Get to navigate back
          },
        ),
        elevation: 0,
        backgroundColor: Color(0xFFFCFCFC),
        centerTitle: true,
        title: Text(
          'Sign In',
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        color: Color(0xFFFCFCFC),
        child: Form(
          key: _formKey, // Added the key to the Form widget
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Sign in with your email and password\nor continue with social media",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      SignForm(), // Include the sign-in form
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SocialCard(
                            icon: FontAwesomeIcons
                                .google, // Corrected the property name
                            backgroundColor: Colors.white,
                            onPressed: () {},
                            iconColor: Colors.red,
                          ),
                          SocialCard(
                            icon: FontAwesomeIcons
                                .facebook, // Corrected the property name
                            backgroundColor: Colors.white,
                            iconColor: Colors.blue,
                            onPressed: () {},
                          ),
                          SocialCard(
                            icon: FontAwesomeIcons
                                .twitter, // Corrected the property name
                            backgroundColor: Colors.white,
                            iconColor: Colors.blue,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      NoAccountText(), // Include the "NoAccountText" widget
                      SizedBox(height: 70),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
