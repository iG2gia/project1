import 'package:app0/women/detail/details_screen.dart'; // Importing details screen
import 'package:flutter/material.dart'; // Importing Flutter's material library
import 'package:get/get.dart'; // Importing the GetX library
import '../../women_products_list.dart'; // Importing a list of women's products

/// A widget that constructs a list of every day category products
class EveryDayList extends StatelessWidget {
  final List everydaylist = []; // Creating an empty list for everyday products

  EveryDayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Iterate through the product list and add products that belong to the 'every day' category
    for (int i = 0; i < products.length; i++) {
      if (products[i].categorie == 'every day') {
        everydaylist.add(products[i]);
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        // a constractor of a grid of every day product

        itemCount: everydaylist.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          // Constructing an 'ItemCard' for each product in the 'everydaylist'
          return ItemCard(
            product: everydaylist[index],
            press: () => Get.to(
              DetailsScreenwomen(
                product: everydaylist[
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
