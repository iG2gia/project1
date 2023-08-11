import 'package:app0/main/app1_state.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../Controllers/first_view_controller.dart';
import '../../favorite/favorite.dart';

import '../men_products_list.dart';
import '../product/men.dart';
import 'body.dart';

class DetailsScreenman extends StatelessWidget {
  final Product product;
  final PageController = Get.put(FirstViewController());
  DetailsScreenman({required this.product});
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
          PageController.pageNum = 1;
          Get.to(App1());
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
