import 'package:app0/Controllers/cart_productController.dart'; // Importing cart controller
import 'package:app0/Controllers/product_price_controller.dart'; // Importing product price controller
import 'package:app0/cart/cart_page.dart'; // Importing cart page
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Importing GetX library for state management
import 'package:icons_flutter/icons_flutter.dart'; // Importing icons
import '../women_products_list.dart'; // Importing product data

/// widget make us add the product to the cart
class AddToCart extends StatelessWidget {
  AddToCart({
    required this.product,
  });

  final Product product;
  final cartController =
      Get.find<CartController>(); // Initializing cart controller*/
  final productpricecontroller = Get.find<
      ProductPriceController>(); // Initializing product price controller

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductPriceController>(builder: (controller) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20),
              height: 50,
              width: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: product.color, // Border color based on product color
                ),
              ),
              child: IconButton(
                icon: Icon(FontAwesome5Icon.cart_plus), // Cart plus icon
                onPressed: () {
                  Get.to(Cartpage()); // Navigate to cart page on button press
                },
              ),
            ),
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue, // Button background color
                ),
                onPressed: () {
                  cartController.addToCart(product); // Add product to cart
                  productpricecontroller
                      .addToCartCalculator(product); // Calculate total price
                },
                child: const Text('Buy Now'), // Button text
              ),
            ),
          ],
        ),
      );
    });
  }
}
