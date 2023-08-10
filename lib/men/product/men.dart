import 'package:app0/men/categories/accs/accs.dart';
import 'package:app0/men/categories/every%20day/every_day.dart';
import 'package:app0/men/categories/night%20out/night_out.dart';
import 'package:app0/men/categories/work/work.dart';
import 'package:app0/men/men_products_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../category/listview.dart';

import 'products.dart';

class Men extends StatefulWidget {
  const Men({Key? key}) : super(key: key);

  @override
  State<Men> createState() => _MenState();
}

class _MenState extends State<Men> {
  int activeIndex = 0;

  bool isExpanded = true;
  String formtext = 'Less';
  IconData formicon = FontAwesomeIcons.angleUp;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        AnimatedContainer(
          duration: Duration(milliseconds: 0),
          height: isExpanded ? 200.0 : 0.0,
          child: Container(
            width: 400,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(80.0),
              child: Image.asset('images/men/o1.jpg'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            width: double.infinity,
            child: Text(
              "Category :",
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
                imagelocation: 'images/men/night out/main.jpg',
                imagetitle: 'Night Out',
                page: NightOut(),
              ),
              Category(
                imagelocation: 'images/men/every day/main.jpg',
                imagetitle: 'Every Day',
                page: EveryDay(),
              ),
              Category(
                imagelocation: 'images/men/work/main.jpg',
                imagetitle: 'Work',
                page: Work(),
              ),
              /*Category(
                    imagelocation: 'images/men/vacation/main.jpg',
                    imagetitle: 'Vacation',
                    page: Vaction(),
                  ),*/
              Category(
                imagelocation: 'images/men/Accs/main.jpg',
                imagetitle: 'Accessorie',
                page: Accs(),
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
              "All :",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        ProductConstructor(productsList: productsMan),
      ],
    );
  }
}
