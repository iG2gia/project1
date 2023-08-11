import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// this widget represents  sign up form
class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conform_password;
  bool remember = false;
  final List<String> errors = [];
//fonction virifie if the list contains an error
  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

// fonction that remove an error from errors' list
  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(), // the email field
          SizedBox(height: 30),
          buildPasswordFormField(), //the password field
          SizedBox(height: 30),
          buildConformPassFormField(), //confirmed password field
          //  FormError(errors: errors),
          SizedBox(height: 40),
          Column(
            children: List.generate(
              errors.length,
              (index) => formErrorText(error: errors[index]),
            ),
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
                }
              },
              child: const Text('Continue'),
            ),
          ),
        ],
      ),
    );
  }

//confirmed password field
  TextFormField buildConformPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => conform_password = newValue,
      //if confirmed password and the password match then it remove the error else it add the error to error list
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: "Please conform your password");
        } else if (value.isNotEmpty && password == conform_password) {
          removeError(error: "Passwords don't match");
        }
        conform_password = value;
      },
      // verifie if the confirmed passaword match with the password
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: "Please conform your password");
          return "";
        } else if ((password != value)) {
          addError(error: "Passwords don't match");
        } else {
          removeError(error: "Passwords don't match");
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
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: Colors.black),
          gapPadding: 10,
        ),
      ),
    );
  }

//password field
  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      //conditions n the password
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: "Please enter your password");
          if (value.length >= 8) {
            removeError(error: "Password is too short");
          } else if (value.length < 8) {
            addError(error: "Password is too short ");
          }
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: "Please enter your password");
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
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: Colors.black),
          gapPadding: 10,
        ),
      ),
    );
  }

// email field
  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      //add an error if the field is emty
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: "Please enter your Email");
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: "Please enter your Email");
          return "";
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
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: Colors.black),
          gapPadding: 10,
        ),
      ),
    );
  }
}

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
