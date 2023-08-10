import 'package:app0/women/categories/every%20day/list_costractor.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class EveryDay extends StatefulWidget {
  const EveryDay({Key? key}) : super(key: key);

  @override
  State<EveryDay> createState() => EveryDayState();
}

class EveryDayState extends State<EveryDay> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: EveryDayList(),
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
          'Every Day Section',
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}
