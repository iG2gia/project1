import 'package:app0/men/categories/vacation/list_constractor.dart'; // Importing the list constructor for vacation products
import 'package:flutter/material.dart'; // Importing Flutter's material library for UI components
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesome icons
import 'package:get/get.dart'; // Importing the GetX library

// A widget representing the Vacation category page for men
class Vaction extends StatefulWidget {
  const Vaction({Key? key}) : super(key: key);

  @override
  State<Vaction> createState() => VactionState();
}

class VactionState extends State<Vaction> {
  @override
  Widget build(BuildContext context) {
    // Building the UI for the Vacation category page
    return SafeArea(
        child: Scaffold(
      body: VacationListMan(), // Displaying the VacationListMan widget
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
          'Vacation Section', // Setting the title of the AppBar
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}
