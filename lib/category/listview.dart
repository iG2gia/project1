import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// widget constructs category clickeble container
class Category extends StatelessWidget {
  final String imagelocation; // Location of the category image
  final String imagetitle; // Title of the category
  final Widget page; // Widget/page associated with the category

  const Category({
    Key? key,
    required this.imagelocation,
    required this.imagetitle,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          Get.to(
              () => page); // Navigates to the associated page using Get package
        },
        child: Stack(
          children: [
            Container(
              height: 200.0, // Modify the height of the container as desired
              width: 98.0, // Modify the width of the container if needed
              child: Image.asset(
                imagelocation,
                width: double
                    .infinity, // Stretches the image to fit the container width
                fit: BoxFit.cover, // Scales the image to cover the container
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                color: Colors.black54,
                child: Text(
                  imagetitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
