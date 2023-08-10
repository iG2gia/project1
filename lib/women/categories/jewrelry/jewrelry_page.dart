import 'package:app0/women/categories/jewrelry/list_constractor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Jewrelry extends StatefulWidget {
  const Jewrelry({Key? key}) : super(key: key);

  @override
  State<Jewrelry> createState() => JewrelryState();
}

class JewrelryState extends State<Jewrelry> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: JewrelryList(),
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
          'Jewrelry Section',
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}
