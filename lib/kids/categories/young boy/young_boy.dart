import 'package:app0/kids/categories/young%20boy/list_constractor.dart'; // Importing the list constructor for young boy products
import 'package:flutter/material.dart'; // Importing Flutter's material library for UI components
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesome icons
import 'package:get/get.dart'; // Importing the GetX library

// A widget representing the YoungBoy category page
class YoungBoy extends StatefulWidget {
  const YoungBoy({Key? key}) : super(key: key);

  @override
  State<YoungBoy> createState() => YoungBoyState();
}

class YoungBoyState extends State<YoungBoy> {
  @override
  Widget build(BuildContext context) {
    // Building the UI for the Young Boys category page
    return SafeArea(
        child: Scaffold(
      body: YoungBoyList(), // Displaying the YoungBoyList widget
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
          'Young Boys Section', // Setting the title of the AppBar
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}
