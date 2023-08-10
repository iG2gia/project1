import 'package:app0/cart/cart_page.dart';
import 'package:app0/kids/kids_products_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../../Controllers/cart_productController.dart';
import '../../Controllers/product_price_controller.dart';

class AddToCart extends StatelessWidget {
  AddToCart({
    required this.product,
  });

  final Product product;
  final CartController cartController = Get.find<CartController>();
  final ProductPriceController productpricecontroller =
      Get.find<ProductPriceController>();

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
                color: product.color,
              ),
            ),
            child: IconButton(
              icon: Icon(FontAwesome5Icon.cart_plus),
              onPressed: () {
                Get.to(Cartpage());
              },
            ),
          ),
          Container(
            width: 350,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              onPressed: () {
                cartController.addToCart(product);
                productpricecontroller.addToCartCalculator(product);
              },
              child: const Text('Buy Now'),
            ),
          ),
        ],
      ),
    );
  }
}
