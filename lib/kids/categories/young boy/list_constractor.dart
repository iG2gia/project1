import 'package:app0/kids/detail/details_screen.dart'; // Importing the details screen
import 'package:app0/kids/kids_products_list.dart'; // Importing the list of kids' products
import 'package:flutter/material.dart'; // Importing Flutter's material library
import 'package:get/get.dart'; // Importing the GetX library

/// A widget that constructs a list of 'young boy' category products for kids
class YoungBoyList extends StatelessWidget {
  final youngBoyList = []; // Creating an empty list for 'young boy' products

  YoungBoyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Iterate through the kids' product list and add products that belong to the 'young boy' category
    for (int i = 0; i < productsKids.length; i++) {
      if (productsKids[i].categorie == 'young boy') {
        youngBoyList.add(productsKids[i]);
      }
    }

    // Building the UI for the list of 'young boy' products
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: youngBoyList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          // Constructing an 'ItemCard' for each product in the 'youngBoyList'
          return ItemCard(
            product: youngBoyList[index],
            press: () => Get.to(
              DetailsScreenkids(
                product: youngBoyList[
                    index], // Passing product details to the details screen
              ),
            ),
          );
        },
      ),
    );
  }
}

/// A widget that represents a card displaying product details
class ItemCard extends StatelessWidget {
  final Product product;
  final Function() press;
  ItemCard({
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    // Building the UI for the product card
    return GestureDetector(
      onTap: press, // Triggering the 'press' function when the card is tapped
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFFF0F0F0),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color:
                  Colors.black.withOpacity(0.2), // Adding a shadow to the card
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
                tag:
                    "${product.id}", // Adding a Hero animation with a unique tag
                child:
                    Image.asset(product.image), // Displaying the product image
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    product.title, // Displaying the product title
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Text(
                  "\$${product.price}", // Displaying the product price
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
