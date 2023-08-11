// Import statements for necessary packages and dependencies
import 'package:app0/sign_up/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'SocalCard.dart';

/// This widget represents the sign-up screen
class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      appBar: AppBar(
        // Leading icon button to navigate back using the Get package
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
        backgroundColor: Color(0xFFFCFCFC),
        centerTitle: true,
        title: Text(
          'Sign Up',
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  // Header Text
                  Text(
                    "Register Account",
                  ),
                  // Subheader Text
                  Text(
                    "Complete your details or continue \nwith social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  // Registration Form
                  SignUpForm(),
                  SizedBox(height: 30),
                  // Row of Social Media Login Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Google SocialCard
                      SocialCard(
                        icon: FontAwesomeIcons.google,
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        iconColor: Colors.red,
                      ),
                      // Facebook SocialCard
                      SocialCard(
                        icon: FontAwesomeIcons.facebook,
                        backgroundColor: Colors.white,
                        iconColor: Colors.blue,
                        onPressed: () {},
                      ),
                      // Twitter SocialCard
                      SocialCard(
                        icon: FontAwesomeIcons.twitter,
                        backgroundColor: Colors.white,
                        iconColor: Colors.blue,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  // Terms and Conditions Text
                  Text(
                    'By continuing you confirm that you agree \nwith our Terms and Conditions',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
