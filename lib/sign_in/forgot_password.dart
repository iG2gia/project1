import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'no_account.dart';

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightGreen[50],
        centerTitle: true,
        title: Text(
          'forgot_password',
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
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
                  "Please enter your email and we will send \nyou a link to return to your account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                ForgotPassForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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
          NoAccountText(),
        ],
      ),
    );
  }
}

// Define the custom widgets used in the code, like CustomSurffixIcon, FormError, DefaultButton, and getProportionateScreenHeight.
// Make sure these widgets are defined elsewhere in your code or imported properly.
// The above code assumes you have defined them somewhere in your project.
