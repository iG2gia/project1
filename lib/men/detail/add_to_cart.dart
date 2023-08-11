// Import necessary packages and files
// Commented import 'package:app0/cart/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';

// Importing the necessary controllers and product list
import '../../Controllers/cart_productController.dart';
import '../../Controllers/product_price_controller.dart';
import '../../cart/cart_page.dart';
import '../men_products_list.dart';

/// Widget for adding products to the cart
class AddToCart extends StatelessWidget {
  AddToCart({
    required this.product,
  });

  final Product product; // The product to be added to the cart
  final CartController cartController =
      Get.find<CartController>(); // Cart controller instance
  final ProductPriceController productpricecontroller =
      Get.find<ProductPriceController>(); // Product price controller instance

  @override
  Widget build(BuildContext context) {
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
                // Navigate to the cart page on button press
                Get.to(Cartpage());
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
                cartController.addToCart(product); // Add product to the cart
                productpricecontroller
                    .addToCartCalculator(product); // Calculate total price
              },
              child: const Text('Buy Now'), // Button text
            ),
          ),
        ],
      ),
    );
  }
}
