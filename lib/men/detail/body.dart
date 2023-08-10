import 'package:app0/men/detail/add_to_cart.dart';
import 'package:app0/men/detail/color_and%20size.dart';
import 'package:app0/men/detail/counter_btn.dart';
import 'package:app0/men/detail/description.dart';
import 'package:app0/men/detail/image.dart';
import 'package:flutter/material.dart';

import '../men_products_list.dart';

class Body extends StatelessWidget {
  final Product product1;

  const Body({required this.product1});
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.92,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.4),
                padding: EdgeInsets.only(
                  top: size.height * 0.12,
                  left: 20,
                  right: 20,
                ),
                //height: 500,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset: Offset(0, 3), // Offset in the (x, y) direction
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    ColorAndSize(product: product1),
                    SizedBox(height: 5),
                    Description(product: product1),
                    SizedBox(height: 5),
                    CounterWithFavBtn(product: product1),
                    SizedBox(height: 5),
                    AddToCart(product: product1)
                  ],
                ),
              ),
              ProductTitleWithImage(product: product1)
            ],
          ),
        )
      ],
    );
  }
}
