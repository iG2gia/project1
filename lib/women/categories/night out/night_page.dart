import 'package:app0/women/categories/night%20out/list_costractor.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class NightOut extends StatefulWidget {
  const NightOut({Key? key}) : super(key: key);

  @override
  State<NightOut> createState() => NightOutState();
}

class NightOutState extends State<NightOut> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: NightOutList(),
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
          'Night Out Section',
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}
