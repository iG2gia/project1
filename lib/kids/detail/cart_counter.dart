import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../Controllers/cart_productController.dart';
import '../../Controllers/product_price_controller.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  final CartController cartController = Get.find<CartController>();
  final ProductPriceController productpricecontroller =
      Get.find<ProductPriceController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductPriceController>(builder: (controller) {
      return Row(
        children: <Widget>[
          buildOutlineButton(
            icon: FontAwesomeIcons.minus,
            press: () {
              productpricecontroller.decrementN();
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 / 2),
            child: Text(
              // if our item is less  then 10 then  it shows 01 02 like that
              productpricecontroller.numOfItems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          buildOutlineButton(
            icon: FontAwesomeIcons.plus,
            press: () {
              productpricecontroller.incrementN();
            },
          ),
        ],
      );
    });
  }

  SizedBox buildOutlineButton(
      {required IconData icon, required Function() press}) {
    return SizedBox(
      width: 40,
      height: 30,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          onPressed: press,
          child: Icon(icon)),
    );
  }
}
