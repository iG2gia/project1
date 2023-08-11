import 'package:app0/sign_in/forgot_password.dart'; // Import necessary dependencies
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart'; // Import the Get package

/// Widget represents the sign-in form
class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  String? email;
  String? password;
  bool remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // Assign the form key
      child: Column(
        // Wrap the form fields and related widgets in a Column
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty &&
                  !errors.contains("Please enter your Email")) {
                setState(() {
                  errors.add("Please enter your Email");
                });
              }
              return null;
            },
            onChanged: (value) {
              if (value.isNotEmpty &&
                  errors.contains("Please enter your Email")) {
                setState(() {
                  errors.remove("Please enter your Email");
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
              suffixIconColor: Colors.black,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 42, vertical: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: BorderSide(color: Colors.black),
                gapPadding: 10,
              ),
            ),
          ),
          SizedBox(height: 40),
          TextFormField(
            obscureText: true,
            validator: (value) {
              if (value!.isEmpty &&
                  !errors.contains("Please enter your password")) {
                setState(() {
                  errors.add("Please enter your password");
                });
              }
              return null;
            },
            onChanged: (value) {
              if (value.isNotEmpty &&
                  errors.contains("Please enter your password")) {
                setState(() {
                  errors.remove("Please enter your password");
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(FontAwesomeIcons.lock),
              ),
              suffixIconColor: Colors.black,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 42, vertical: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: BorderSide(color: Colors.black),
                gapPadding: 10,
              ),
            ),
          ),
          SizedBox(height: 30),
          Column(
            children: List.generate(
              errors.length,
              (index) =>
                  formErrorText(error: errors[index]), // Display form errors
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: Colors.black,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                onTap: () => {
                  Get.to(ForgotPasswordScreen())
                }, // Navigate to forgot password screen
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 400,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Do something when the form is valid and saved.
                }
              },
              child: const Text('Continue'),
            ),
          ),
        ],
      ),
    );
  }
}

// Function to display form errors
Row formErrorText({required String error}) {
  return Row(
    children: [
      Icon(
        FontAwesomeIcons.circleExclamation,
        color: Colors.red,
      ),
      SizedBox(
        width: 10,
      ),
      Text(error),
    ],
  );
}
