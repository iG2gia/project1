import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesome icons
import 'package:get/get.dart'; // Importing GetX library for state management
import '../../Controllers/favorite_controller.dart'; // Importing your controller
import '../women_products_list.dart'; // Importing product data
import 'cart_counter.dart'; // Importing cart counter widget

class CounterWithFavBtn extends StatefulWidget {
  CounterWithFavBtn({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product; // Assuming you have a 'Product' class defined

  @override
  _CounterWithFavBtnState createState() => _CounterWithFavBtnState();
}

class _CounterWithFavBtnState extends State<CounterWithFavBtn> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteController>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CartCounter(), // Display cart counter widget
          IconButton(
            icon: Icon(
              FontAwesomeIcons.heart, // Heart icon
              color: controller.favoriteProducts.contains(widget.product)
                  ? Color(0xFFFF6464) // Change color if product is in favorites
                  : Colors.black, // Default color
            ),
            onPressed: () {
              controller
                  .favoriteadder(widget.product); // Add to favorites on tap
            },
          ),
        ],
      );
    });
  }
}
