import 'package:app0/kids/product/kids.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../favorite/favorite.dart';

import '../kids_products_list.dart';
import 'body.dart';

class DetailsScreenkids extends StatelessWidget {
  final Product product;

  DetailsScreenkids({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: Color(0xFFF0F0F0),
      appBar: buildAppBar(context),
      body: Body(
        product1: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFF0F0F0),
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.black,
        ),
        onPressed: () {
          Get.to(Kids());
        },
      ),
      actions: [
        IconButton(
          icon: Icon(
            FontAwesomeIcons.shareNodes,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.heart,
            color: Colors.black,
          ),
          onPressed: () {
            Get.to(Favorite());
          },
        ),
      ],
    );
  }
}
