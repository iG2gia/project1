import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'no_account.dart'; // Import any necessary dependencies or custom widgets

/// Widget represents the forgot password pade
class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password"; // Route name for navigation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC), // Set background color
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        elevation: 0,
        backgroundColor: Color(0xFFFCFCFC), // Set app bar background color
        centerTitle: true,
        title: Text(
          'forgot_password',
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black), // Set app bar icon color
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Please enter your email and we will send you a link to return to your account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                ForgotPassForm(), // Include the forgot password form
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//class that virifie the errors and add it or remove from the forgot password field
class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>(); // Key to identify the form
  List<String> errors = [];
  String? email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // Assign the form key
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty &&
                  errors.contains("Please enter your Email")) {
                setState(() {
                  errors.remove("Please enter your Email");
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty &&
                  !errors.contains("Please enter your Email")) {
                setState(() {
                  errors.add("Please enter your Email");
                });
              }

              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(FontAwesomeIcons.envelope),
              ),
              suffixIconColor: Colors.lightBlue,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 42, vertical: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: BorderSide(color: Colors.lightBlue),
                gapPadding: 10,
              ),
            ),
          ),
          SizedBox(height: 60),
          Container(
            width: 400,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Do something when the form is valid and saved.
                }
              },
              child: const Text('Continue'),
            ),
          ),
          SizedBox(height: 15),
          NoAccountText(), // Include the "NoAccountText" widget
        ],
      ),
    );
  }
}
