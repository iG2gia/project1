import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Category extends StatelessWidget {
  final String imagelocation;
  final String imagetitle;
  final Widget page;

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
          Get.to(() => page);
        },
        child: Stack(
          children: [
            Container(
              height: 2000.0, // Modify the height of the container as desired
              width: 98.0,

              // Modify the width of the container if needed
              child: Image.asset(
                imagelocation,
                width: double
                    .infinity, // Use "double.infinity" to stretch the image to fit the container width
                fit: BoxFit
                    .cover, // Adjust the fit property based on your image scaling needs
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
