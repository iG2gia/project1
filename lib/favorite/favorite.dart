import 'package:app0/kids/detail/details_screen.dart';
import 'package:app0/men/detail/details_screen.dart';
import 'package:app0/men/men_products_list.dart';
import 'package:app0/women/detail/details_screen.dart';
import 'package:app0/women/women_products_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../Controllers/MenController.dart';
import '../kids/kids_products_list.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  final FavoriteController favoriteController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft, color: Colors.black),
            onPressed: () {
              Get.back();
            },
          ),
          elevation: 0,
          backgroundColor: Color(0xFFFCFCFC),
          centerTitle: true,
          title: Text(
            'Favorite',
            style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: GetBuilder<FavoriteController>(
          builder: (controller) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemCount: controller.favoriteProducts.length,
                itemBuilder: (context, index) {
                  var product = controller.favoriteProducts[index];
                  return ItemCard(
                    product: product,
                    press: () {
                      if (productsKids.contains(product)) {
                        Get.to(DetailsScreenwomen(product: product));
                      } else if (products.contains(product)) {
                        Get.to(DetailsScreenkids(product: product));
                      } else if (productsMan.contains(product)) {
                        Get.to(DetailsScreenman(product: product));
                      }
                    },
                    removeCallback: () {
                      controller.removeFromFavorites(product);
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final product;
  final Function() press;
  final Function() removeCallback;

  ItemCard({
    required this.product,
    required this.press,
    required this.removeCallback,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FavoriteController>();
    bool isFavorite = true;

    return GetBuilder<FavoriteController>(builder: (controller) {
      return GestureDetector(
        onTap: press,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
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
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      Text(
                        "\$${product.price}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      removeCallback();
                    },
                    child: Icon(FontAwesomeIcons.heart,
                        color: isFavorite
                            ? const Color(0xFFFF6464)
                            : Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
