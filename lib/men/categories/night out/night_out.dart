import 'package:app0/men/categories/night%20out/list_constractor.dart'; // Importing the list constructor for night out products
import 'package:flutter/material.dart'; // Importing Flutter's material library for UI components
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesome icons
import 'package:get/get.dart'; // Importing the GetX library

// A widget representing the NightOut category page for men
class NightOut extends StatefulWidget {
  const NightOut({Key? key}) : super(key: key);

  @override
  State<NightOut> createState() => NightOutState();
}

class NightOutState extends State<NightOut> {
  @override
  Widget build(BuildContext context) {
    // Building the UI for the NightOut category page
    return SafeArea(
        child: Scaffold(
      body: NightOutListMan(), // Displaying the NightOutListMan widget
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
          'Night Out Section', // Setting the title of the AppBar
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}
