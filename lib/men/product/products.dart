import 'package:app0/men/detail/details_screen.dart'; // Importing details screen for product
import 'package:flutter/material.dart'; // Importing Flutter's material library for UI components
import 'package:get/get.dart'; // Importing GetX library for navigation

import '../men_products_list.dart'; // Importing product data

// A widget that constructs a grid of product items
class ProductConstructor extends StatelessWidget {
  List<dynamic> productsList;
  ProductConstructor({required this.productsList});

  @override
  Widget build(BuildContext context) {
    // Building the grid view of products
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          itemCount: productsList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => ItemCard(
            product: productsList[index],
            press: () => Get.to(
              // Navigating to the detail screen when a product is tapped
              DetailsScreenman(
                product: productsList[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// A widget that represents an individual product item card
class ItemCard extends StatelessWidget {
  Product product;
  final Function() press;

  ItemCard({
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press, // Trigger the specified function when tapped
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFFF0F0F0),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // Offset in the y-direction
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Hero(
                tag: "${product.id}", // Unique tag for hero animation
                child: Image.asset(product.image), // Display product image
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    product.title, // Display product title
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Text(
                  "\$${product.price}", // Display product price
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
