import 'package:carousel_slider/carousel_slider.dart'; // Importing carousel slider
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // Importing smooth page indicator

import '../women_products_list.dart'; // Importing product data

/// A widget that constructs a CarouselSlider which represent the different product images

class ProductTitleWithImage extends StatefulWidget {
  ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductTitleWithImageState createState() => _ProductTitleWithImageState();
}

class _ProductTitleWithImageState extends State<ProductTitleWithImage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //slider builder
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 300,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) => setState(() =>
                  activeIndex = index), // Update activeIndex when page changes
              autoPlayAnimationDuration: const Duration(seconds: 2),
            ),
            itemCount: widget.product.imagesList.length,
            itemBuilder: (context, index, realIndex) {
              final imageUrl = widget.product.imagesList[index];
              return buildImage(imageUrl, index);
            },
          ),
          SizedBox(
            height: 40,
          ),
          buildIndicator(), // Display the indicator dots
        ],
      ),
    );
  }

  Widget buildImage(String imageUrl, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.transparent,
      child: Image.asset(imageUrl), // Display the product image
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex, // Current active index
        count: widget.product.imagesList.length, // Total number of images
        effect: JumpingDotEffect(
          activeDotColor: Colors.lightBlue, // Color of the active dot
        ),
      );
}
