// Import necessary packages and files
import 'package:app0/kids/categories/baby%20boy/baby_boy.dart';
import 'package:app0/kids/categories/baby%20girl/baby_girl.dart';
import 'package:app0/kids/categories/tween%20boy/tween_boy.dart';
import 'package:app0/kids/categories/tween%20girl/tween_girl.dart';
import 'package:app0/kids/categories/young%20boy/young_boy.dart';
import 'package:app0/kids/categories/young%20girl/young_girl.dart';
import 'package:app0/kids/product/products.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../category/listview.dart';
import '../kids_products_list.dart';

// A widget that represents the kids page
class Kids extends StatefulWidget {
  const Kids({Key? key}) : super(key: key);

  @override
  KidsState createState() => KidsState();
}

class KidsState extends State<Kids> {
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
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                    if (isExpanded == true) {
                      formtext = 'Less';
                      formicon = FontAwesomeIcons.angleUp;
                    } else {
                      formtext = 'More';
                      formicon = FontAwesomeIcons.angleDown;
                    }
                  });
                },
                // Styling the ElevatedButton
                style: ElevatedButton.styleFrom(
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
          // AnimatedContainer to change container height based on isExpanded
          AnimatedContainer(
            duration: Duration(milliseconds: 0),
            height: isExpanded ? 200.0 : 0.0,
            child: Container(
              width: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80.0),
                child: Image.asset('images/kids/o1.jpg'),
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
                // A widget that represents a category
                Category(
                  imagelocation: 'images/kids/baby girl/a1.jpg',
                  imagetitle: '  Baby Girl\n' '    (0 - 3)',
                  page: BabyGirl(),
                ),
                Category(
                  imagelocation: 'images/kids/baby boy/a1.jpg',
                  imagetitle: '  Baby Boy \n' '    (0 - 3)',
                  page: BabyBoy(),
                ),
                Category(
                  imagelocation: 'images/kids/young girl/a1.jpg',
                  imagetitle: 'Young Girl \n' '    (4 - 7)',
                  page: YoungGirl(),
                ),
                Category(
                  imagelocation: 'images/kids/young boy/a1.jpg',
                  imagetitle: 'Young Boy \n' '    (4 - 7)',
                  page: YoungBoy(),
                ),
                Category(
                  imagelocation: 'images/kids/tween girl/a1.jpg',
                  imagetitle: 'Tween Girl \n' '    (8 - 12)',
                  page: TweenGirl(),
                ),
                Category(
                  imagelocation: 'images/kids/tween boy/a1.jpg',
                  imagetitle: 'Tween Boy \n' '    (8 - 12)',
                  page: TweenBoy(),
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
          // Displaying a list of products using a custom widget
          ProductConstructor(productsList: productsKids),
        ],
      ),
    );
  }
}
