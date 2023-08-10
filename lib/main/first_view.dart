import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../women/product/women.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  int activeIndex = 0;
  final List<String> imageUrls = [
    'images/img1.jpg',
    'images/img2.jpg',
    'images/img3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 375,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                  ),
                  itemCount: imageUrls.length,
                  itemBuilder: (context, index, realIndex) {
                    final imageUrl = imageUrls[index];
                    return buildImage(imageUrl, index);
                  },
                ),
                const SizedBox(
                  height: 30,
                  width: 500,
                ),
                buildIndicator(),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // Change to your desired color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20), // Adjust the radius as needed
                    ),
                    fixedSize:
                        Size(400, 50), // Change the width and height as needed
                  ),
                  onPressed: () {
                    //Get.to(Women());
                  },
                  child: const Text(' Start Shopping ',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String imageUrl, int index) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // Offset in the y-direction
          ),
        ],
        borderRadius: BorderRadius.circular(10.0), // Add border radius here
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      //color: Colors.grey,
      child: ClipRRect(
        // Use ClipRRect to add border radius
        borderRadius: BorderRadius.circular(20.0),
        // Add border radius here too
        child: Image.asset(
          imageUrl,
          fit: BoxFit
              .cover, // To make sure the image fits within the rounded corners
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imageUrls.length,
        effect: const JumpingDotEffect(
          activeDotColor: Colors.black,
        ),
      );
}
