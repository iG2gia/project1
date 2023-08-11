import 'package:flutter/material.dart'; // Importing Flutter's material library for UI components
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesome icons
import 'package:get/get.dart'; // Importing the GetX library

import 'list_constractor.dart'; // Importing the list constructor for baby boy products

// A widget representing the BabyBoy category page
class BabyBoy extends StatefulWidget {
  const BabyBoy({Key? key}) : super(key: key);

  @override
  State<BabyBoy> createState() => BabyBoyState();
}

class BabyBoyState extends State<BabyBoy> {
  @override
  Widget build(BuildContext context) {
    // Building the UI for the Baby Boys category page
    return SafeArea(
        child: Scaffold(
      body: BabyBoyList(), // Displaying the BabyBoyList widget
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
          'Baby Boys Section', // Setting the title of the AppBar
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}
