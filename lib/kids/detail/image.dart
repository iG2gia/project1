import 'package:app0/kids/kids_products_list.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 300,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
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
          buildIndicator(),
        ],
      ),
    );
  }

  Widget buildImage(String imageUrl, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.transparent,
      child: Image.asset(imageUrl),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: widget.product.imagesList.length,
        effect: JumpingDotEffect(
          activeDotColor: Colors.lightBlue,
        ),
      );
}
