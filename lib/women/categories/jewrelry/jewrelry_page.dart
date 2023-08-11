import 'package:app0/women/categories/jewrelry/list_constractor.dart'; // Importing the list constructor for jewelry products
import 'package:flutter/material.dart'; // Importing Flutter's material library
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesome icons
import 'package:get/get.dart'; // Importing the GetX library

/// widget that creat Jewrelry category page
class Jewrelry extends StatefulWidget {
  const Jewrelry({Key? key}) : super(key: key);

  @override
  State<Jewrelry> createState() => JewrelryState();
}

class JewrelryState extends State<Jewrelry> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: JewrelryList(), // Displaying the JewrelryList widget
      backgroundColor: Color(0xFFFCFCFC),
      appBar: AppBar(
        //Jewrelry category page appbar
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
          'Jewrelry Section', // Setting the title of the AppBar
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}
