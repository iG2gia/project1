import 'package:app0/women/detail/add_to_cart.dart'; // Importing add to cart widget
import 'package:app0/women/detail/color_and%20size.dart'; // Importing color and size widget
import 'package:app0/women/detail/counter_btn.dart'; // Importing counter button widget
import 'package:app0/women/detail/description.dart'; // Importing description widget
import 'package:app0/women/detail/image.dart'; // Importing image widget
import 'package:flutter/material.dart';

import '../women_products_list.dart'; // Importing product data

class Body extends StatelessWidget {
  final Product product1;

  const Body({required this.product1});

  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.92, // 92% of screen height
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.4),
                padding: EdgeInsets.only(
                  top: size.height * 0.12,
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset: Offset(0, 3), // Offset in the (x, y) direction
                    ),
                  ],
                  color: Colors.white, // Background color
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24), // Top left corner radius
                    topRight: Radius.circular(24), // Top right corner radius
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    ColorAndSize(product: product1), // Display color and size
                    SizedBox(height: 5),
                    Description(product: product1), // Display description
                    SizedBox(height: 5),
                    CounterWithFavBtn(
                        product:
                            product1), // Display counter with favorite button
                    SizedBox(height: 5),
                    AddToCart(product: product1) // Display add to cart button
                  ],
                ),
              ),
              ProductTitleWithImage(
                  product: product1) // Display product title and image
            ],
          ),
        )
      ],
    );
  }
}
