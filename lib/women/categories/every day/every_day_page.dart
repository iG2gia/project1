// Importing required packages and libraries
import 'package:app0/women/categories/every%20day/list_costractor.dart'; // Importing a module from the app
import 'package:flutter/material.dart'; // Importing Flutter's material library for UI components
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesome icons
import 'package:get/get.dart'; // Importing the GetX library for state management

/// widget that creat EveryDay category page
class EveryDay extends StatefulWidget {
  const EveryDay({Key? key}) : super(key: key);

  @override
  State<EveryDay> createState() => EveryDayState();
}

class EveryDayState extends State<EveryDay> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: EveryDayList(), // Displaying the EveryDayList widget
      backgroundColor: Color(0xFFFCFCFC),
      appBar: //EveryDay category page appbar
          AppBar(
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
