import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../Controllers/favorite_controller.dart';

import '../men_products_list.dart';
import 'cart_counter.dart';

class CounterWithFavBtn extends StatefulWidget {
  CounterWithFavBtn({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product; // Assuming you have a 'Product' class defined

  @override
  _CounterWithFavBtnState createState() => _CounterWithFavBtnState();
}

class _CounterWithFavBtnState extends State<CounterWithFavBtn> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteController>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CartCounter(),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.heart,
              color: controller.favoriteProducts.contains(widget.product)
                  ? Color(0xFFFF6464)
                  : Colors.black,
            ),
            onPressed: () {
              controller.favoriteadder(widget.product);
            },
          ),
        ],
      );
    });
  }
}
