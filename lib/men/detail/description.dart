import 'package:flutter/material.dart';

import '../men_products_list.dart';

/// a widget that represent description text in the detail screen
class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Text(
            product.title, // Displaying the product title
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            product.description, // Displaying the product description
            style: TextStyle(height: 1.5), // Setting line height
          ),
        ],
      ),
    );
  }
}
