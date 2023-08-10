import 'package:app0/women/product/women.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesome icons
import 'package:get/get.dart'; // Importing GetX library for navigation

import '../../favorite/favorite.dart'; // Importing favorite screen
import '../women_products_list.dart'; // Importing product data
import 'body.dart'; // Importing the body widget

class DetailsScreenwomen extends StatelessWidget {
  final Product product;

  DetailsScreenwomen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Setting the background color
      backgroundColor: Color(0xFFF0F0F0),
      appBar: buildAppBar(context), // Building the app bar
      body: Body(
        product1: product, // Passing the product data to the body widget
      ),
    );
  }

  // Building the app bar
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFF0F0F0), // App bar background color
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          FontAwesomeIcons.arrowLeft, // Left arrow icon
          color: Colors.black, // Icon color
        ),
        onPressed: () {
          Get.to(Women()); // Navigate back
        },
      ),
      actions: [
        IconButton(
          icon: Icon(
            FontAwesomeIcons.shareNodes, // Share icon
            color: Colors.black, // Icon color
          ),
          onPressed: () {
            // Functionality for sharing
          },
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.heart, // Heart icon
            color: Colors.black, // Icon color
          ),
          onPressed: () {
            Get.to(Favorite()); // Navigate to the Favorite screen
          },
        ),
      ],
    );
  }
}
