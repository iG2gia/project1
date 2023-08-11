import 'package:app0/men/detail/details_screen.dart'; // Importing the details screen
import 'package:app0/men/men_products_list.dart'; // Importing the list of men's products
import 'package:flutter/material.dart'; // Importing Flutter's material library
import 'package:get/get.dart'; // Importing the GetX library

/// A widget that constructs a list of vacation category products for men
class VacationListMan extends StatelessWidget {
  final List vacationListMan =
      []; // Creating an empty list for vacation products

  VacationListMan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Iterate through the men's product list and add products that belong to the 'vacation' category
    for (int i = 0; i < productsMan.length; i++) {
      if (productsMan[i].categorie == 'vacation') {
        vacationListMan.add(productsMan[i]);
      }
    }

    // Building the UI for the list of vacation products
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: vacationListMan.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          // Constructing an 'ItemCard' for each product in the 'vacationListMan'
          return ItemCard(
            product: vacationListMan[index],
            press: () => Get.to(
              DetailsScreenman(
                product: vacationListMan[
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
