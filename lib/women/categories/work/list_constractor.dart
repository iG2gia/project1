import 'package:app0/women/detail/details_screen.dart'; // Importing the details screen
import 'package:flutter/material.dart'; // Importing Flutter's material library
import 'package:get/get.dart'; // Importing the GetX library
import '../../women_products_list.dart'; // Importing a list of women's products

/// A widget that constructs a list of work category products
class WorkList extends StatelessWidget {
  final List workList = []; // Creating an empty list for work products

  WorkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Iterate through the product list and add products that belong to the 'work' category
    for (int i = 0; i < products.length; i++) {
      if (products[i].categorie == 'work') {
        workList.add(products[i]);
      }
    }

    // Building the UI for the list of work products
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: workList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          // Constructing an 'ItemCard' for each product in the 'workList'
          return ItemCard(
            product: workList[index],
            press: () => Get.to(
              DetailsScreenwomen(
                product: workList[
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: product
                    .color, // Using product color for the card background
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                child: Image.asset(
                  product.image, // Displaying the product image
                  fit: BoxFit.contain, // Preserve aspect ratio
                ),
                tag:
                    "${product.id}", // Adding a Hero animation with a unique tag
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              product.title, // Displaying the product title
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          Text(
            "\$${product.price}", // Displaying the product price
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          )
        ],
      ),
    );
  }
}
