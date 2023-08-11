// Importing required packages and libraries
import 'package:app0/men/categories/accs/list_constractor.dart'; // Importing a module for accessories products
import 'package:flutter/material.dart'; // Importing Flutter's material library for UI components
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesome icons
import 'package:get/get.dart'; // Importing the GetX library for state management

/// A widget that represents the Accessories category page
class Accs extends StatefulWidget {
  const Accs({Key? key}) : super(key: key);

  @override
  State<Accs> createState() => AccsState();
}

class AccsState extends State<Accs> {
  @override
  Widget build(BuildContext context) {
    // Building the UI for the Accessories category page
    return SafeArea(
        child: Scaffold(
      body: AccsList(), // Displaying the AccsList widget
      backgroundColor: Color(0xFFFCFCFC),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.arrowLeft, // Using a FontAwesome arrow icon
            color: Colors.black,
          ),
          onPressed: () {
            Get.back(); // Navigating back using the Get library
          },
        ),
        elevation: 0,
        backgroundColor: Color(0xFFFCFCFC),
        centerTitle: true,
        title: Text(
          'Accessories Section', // Setting the title of the AppBar
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}
