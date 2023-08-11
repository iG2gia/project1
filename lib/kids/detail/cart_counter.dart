import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesome icons
import 'package:get/get.dart'; // Importing GetX library for state management

import '../../Controllers/product_price_controller.dart'; // Importing product price controller
/// Display cart counter widget

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  final ProductPriceController productpricecontroller = Get.find<
      ProductPriceController>(); // Initializing product price controller

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductPriceController>(builder: (controller) {
      return Row(
        children: <Widget>[
          buildOutlineButton(
            icon: FontAwesomeIcons.minus,
            press: () {
              productpricecontroller
                  .decrementN(); // Decrement the number of items
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 / 2),
            child: Text(
              // if our item is less  then 10 then  it shows 01 02 like that
              productpricecontroller.numOfItems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          buildOutlineButton(
            icon: FontAwesomeIcons.plus,
            press: () {
              productpricecontroller
                  .incrementN(); // Increment the number of items
            },
          ),
        ],
      );
    });
  }

  // Building an outlined button with an icon
  SizedBox buildOutlineButton(
      {required IconData icon, required Function() press}) {
    return SizedBox(
      width: 40,
      height: 30,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          onPressed: press, // Function to execute on button press
          child: Icon(icon)),
    );
  }
}
