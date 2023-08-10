import 'package:app0/kids/categories/baby%20girl/list_constractor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BabyGirl extends StatefulWidget {
  const BabyGirl({Key? key}) : super(key: key);

  @override
  State<BabyGirl> createState() => BabyGirlState();
}

class BabyGirlState extends State<BabyGirl> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: BabyGirlList(),
      backgroundColor: Color(0xFFFCFCFC),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        elevation: 0,
        backgroundColor: Color(0xFFFCFCFC),
        centerTitle: true,
        title: Text(
          'Baby Girls Section',
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}
