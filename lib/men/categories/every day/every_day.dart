import 'package:app0/men/categories/every%20day/list_constractor.dart'; // Importing the list constructor for everyday products
import 'package:flutter/material.dart'; // Importing Flutter's material library for UI components
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesome icons
import 'package:get/get.dart'; // Importing the GetX library

// A widget representing the EveryDay category page for men
class EveryDay extends StatefulWidget {
  const EveryDay({Key? key}) : super(key: key);

  @override
  State<EveryDay> createState() => EveryDayState();
}

class EveryDayState extends State<EveryDay> {
  @override
  Widget build(BuildContext context) {
    // Building the UI for the EveryDay category page
    return SafeArea(
        child: Scaffold(
      body: EveryDayListMan(), // Displaying the EveryDayListMan widget
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
          'Every Day Section', // Setting the title of the AppBar
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}
