import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'list_constractor.dart';

class BabyBoy extends StatefulWidget {
  const BabyBoy({Key? key}) : super(key: key);

  @override
  State<BabyBoy> createState() => BabyBoyState();
}

class BabyBoyState extends State<BabyBoy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: BabyBoyList(),
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
          'Baby Boys Section',
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}
