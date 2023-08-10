// Import necessary packages and files
import 'package:app0/women/categories/jewrelry/jewrelry_page.dart';
import 'package:app0/women/categories/night%20out/night_page.dart';
import 'package:app0/women/categories/work/work_page.dart';
import 'package:app0/women/product/products.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../category/listview.dart';
import '../categories/every day/every_day_page.dart';
import '../categories/vacation/vacation_page.dart';
import '../women_products_list.dart';

class Women extends StatefulWidget {
  const Women({Key? key}) : super(key: key);

  @override
  State<Women> createState() => _WomenState();
}

class _WomenState extends State<Women> {
  int activeIndex = 0;

  bool isExpanded = true;
  String formtext = 'Less';
  IconData formicon = FontAwesomeIcons.angleUp;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //ElevatedButton that make us inverce isExpanded value
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                    //the first form of the ElevatedButton when isExpanded == true
                    if (isExpanded == true) {
                      formtext = 'Less';
                      formicon = FontAwesomeIcons.angleUp;
                    }
                    //the second form of the ElevatedButton when isExpanded ==false
                    else {
                      formtext = 'More';
                      formicon = FontAwesomeIcons.angleDown;
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  //change the style of the ElevatedButton
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  backgroundColor: const Color(0xFFFCFCFC),
                ),
                child: Container(
                  width: 100,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.transparent), // Make the border invisible
                  ),
                  child: Row(
                    children: [
                      Icon(
                        formicon,
                        color: Colors.black,
                      ),
                      SizedBox(width: 5),
                      Text(
                        formtext,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          AnimatedContainer(
            duration: Duration(milliseconds: 0),
            height: isExpanded ? 200.0 : 0.0,
            child: Container(
              width: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80.0),
                child:
                    Image.asset('images/women/o1.jpg'), // Displaying an image
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              width: double.infinity,
              child: Text(
                "Category :", // Heading for categories
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 80.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Category(
                  imagelocation:
                      'images/women/vacation/a1.png', // Image location for category
                  imagetitle: 'Vacation', // Category title
                  page: Vaction(), // Linked category page
                ),
                Category(
                  imagelocation:
                      'images/women/every day/a1.jpg', // Image location for category
                  imagetitle: 'Every Day', // Category title
                  page: EveryDay(), // Linked category page
                ),
                Category(
                  imagelocation:
                      'images/women/night out/a1.png', // Image location for category
                  imagetitle: 'Night Out', // Category title
                  page: NightOut(), // Linked category page
                ),
                Category(
                  imagelocation:
                      'images/women/work/a1.jpg', // Image location for category
                  imagetitle: 'Work', // Category title
                  page: Work(), // Linked category page
                ),
                Category(
                  imagelocation:
                      'images/women/jewrelry/a1.jpg', // Image location for category
                  imagetitle: 'Jewelry', // Category title
                  page: Jewrelry(), // Linked category page
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              width: double.infinity,
              child: Text(
                "All :", // Heading for all products
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          ProductConstructor(
              productsList:
                  products), // Displaying a list of products using a custom widget
        ],
      ),
    );
  }
}
