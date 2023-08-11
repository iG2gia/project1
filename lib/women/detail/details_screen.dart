import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesome icons
import 'package:get/get.dart'; // Importing GetX library for navigation

import '../../Controllers/first_view_controller.dart';
import '../../favorite/favorite.dart'; // Importing favorite screen
import '../../main/app1_state.dart';
import '../women_products_list.dart'; // Importing product data
import 'body.dart'; // Importing the body widget

/// A widget that create detail screen for each product
class DetailsScreenwomen extends StatelessWidget {
  final Product product;

  DetailsScreenwomen({required this.product});
  final PageController = Get.put(FirstViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Setting the background color
      backgroundColor: Color(0xFFF0F0F0),
      appBar: buildAppBar(context), // Building the app bar

      body: //widget that regroupe the different parts of detail page
          Body(
        product1: product, // Passing the product data to the body widget
      ),
    );
  }

  // Building the appbar of the detail screen
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
          PageController.pageNum = 2;
          Get.to(App1()); // Navigate back
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
