import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../Controllers/product_price_controller.dart';

/// widget that display cart products
class ItemCard extends StatelessWidget {
  final product;
  final Function() press;

  ItemCard({
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    final productpricecontroller = Get.find<
        ProductPriceController>(); // Initializing product price controller

    return GetBuilder<ProductPriceController>(builder: (controller) {
      return GestureDetector(
        onTap: press,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: Offset(0, 3), // Offset in the (x, y) direction
                  ),
                ],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFFFCFCFC),
                      ),
                      height: 100,
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            product.title,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 16),
                          ),
                        ),
                        Text(
                          "\$${product.price}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        buildOutlineButton(
                          icon: FontAwesomeIcons.plus,
                          press: () {
                            productpricecontroller.incrementN();
                            productpricecontroller.incrementCalcilator(product);
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 7),
                          child: Text(
                            // if our item is less  then 10 then  it shows 01 02 like that
                            productpricecontroller.numOfItems
                                .toString()
                                .padLeft(2, "0"),
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        buildOutlineButton(
                          icon: FontAwesomeIcons.minus,
                          press: () {
                            productpricecontroller.decrementN();
                            productpricecontroller.decrementCalcilator(product);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

// button builder
  SizedBox buildOutlineButton({
    required IconData icon,
    required Function() press,
  }) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0xFFF0F0F0),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        onPressed: press,
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
