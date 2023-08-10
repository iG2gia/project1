import 'package:app0/sign_up/sign_up_form.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'SocalCard.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
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
                  SizedBox(height: 15), // 4%
                  Text(
                    "Register Account",
                  ),
                  Text(
                    "Complete your details or continue \nwith social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  SignUpForm(),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                  SizedBox(height: 30),
                  Text(
                    'By continuing your confirm that you agree \nwith our Term and Condition',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
