import 'package:flutter/material.dart';

import '../women_products_list.dart'; // Importing product data

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text:
                          "\$${product.price}", // Displaying the product price
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Text("Color"), // Displaying the color title
              Row(
                children: <Widget>[
                  ColorDot(
                    color: Color(0xFF356C95), // Color of the dot
                    isSelected: true, // Whether the color is selected or not
                  ),
                  ColorDot(color: Color(0xFFF8C078)), // Another color dot
                  ColorDot(color: Color(0xFFA29B9B)), // Another color dot
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.red),
              children: [
                TextSpan(text: "Size\n"),
                TextSpan(
                  text: "${product.size} cm", // Displaying the product size
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    // by default isSelected is false
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 0,
        right: 20 / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 20,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected
              ? color
              : Colors.transparent, // Display border if selected
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color, // Set color of the dot
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
